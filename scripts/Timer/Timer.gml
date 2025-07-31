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

function TimerManager() constructor
{
	timers = array_create(0);
	
	
	/// @param {Real} _duration
	/// @param {function} _callback
	/// @param {Struct|Id.Instance} _owner
	static Add = function(duration, callback, owner)
	{
		var newTimer = new Timer(duration, callback, owner);
		array_push(timers, newTimer);
		return weak_ref_create(newTimer);
	}
	
	static Step = function(timeSeconds)
	{
		// Clear expired timers
		ArrayEraseIf(timers, function(timer)
			{
				return timer.expired;
			});
			
		var timerCount = array_length(timers);
		for (var i = 0; i < timerCount; ++i)
		{
			timers[i].Step(timeSeconds);
		}
	}
}