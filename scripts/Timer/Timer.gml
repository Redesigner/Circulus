/// @param {Real} _duration
/// @param {function} _callback
/// @param {Struct|Id.Instance} _owner
function Timer(_duration, _callback, _owner) constructor
{
	duration = _duration;
	currentTime = 0;
	
	callback = _callback;
	owner = weak_ref_create(_owner);
	expired = false;
	paused = false;
	
	static Step = function(timeSeconds)
	{
		currentTime += timeSeconds;
		if (currentTime > duration)
		{
			if (weak_ref_alive(owner))
			{
				callback();
			}
			expired = true;
		}
	}
}

/// @param {Struct.Timer} timer
function TimerHandle(timer) constructor
{
	timerRef = weak_ref_create(timer);
	
	static Reset = function()
	{
		if (weak_ref_alive(timerRef))
		{
			timerRef.ref.currentTime = 0;
		}
	}
	
	static Pause = function()
	{
		if (weak_ref_alive(timerRef))
		{
			timerRef.ref.paused = true;
		}
	}
	
	static Unpause = function()
	{
		if (weak_ref_alive(timerRef))
		{
			timerRef.ref.paused = false;
		}
	}
	
	static ElapsedTime = function()
	{
		if (weak_ref_alive(timerRef))
		{
			return timerRef.ref.currentTime;
		}
		return 0;
	}
	
	static ElapsedTimePercent = function()
	{
		if (weak_ref_alive(timerRef))
		{
			return clamp(timerRef.ref.currentTime / timerRef.ref.duration, 0, 1);
		}
		return 0;
	}
}

function TimerManager() constructor
{
	timers = array_create(0);
	
	/// @param {Real} duration
	/// @param {function} callback
	/// @param {Struct|Id.Instance} owner
	static Add = function(duration, callback, owner)
	{
		var newTimer = new Timer(duration, callback, owner);
		array_push(timers, newTimer);
		return new TimerHandle(newTimer);
	}
	
	static Step = function(timeSeconds)
	{
		// Clear expired timers
		ArrayEraseIf(timers, function(timer)
			{
				return timer.expired || !weak_ref_alive(timer.owner);
			});
			
		var timerCount = array_length(timers);
		for (var i = 0; i < timerCount; ++i)
		{
			if (timers[i].paused)
			{
				continue;
			}
			timers[i].Step(timeSeconds);
		}
	}
}