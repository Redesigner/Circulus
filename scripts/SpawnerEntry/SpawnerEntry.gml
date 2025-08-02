/// @param {Asset.GMObject} _type
/// @param {Real} _spawnPointIndex
/// @param {Real} _delay
function SpawnerEntry(_type, _spawnPointIndex, _delay, _direction = 0) constructor
{
	type = _type;
	spawnPointIndex = _spawnPointIndex;
	delay = _delay;
	spawned = false;
	walkDirection = _direction;
}