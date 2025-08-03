function SpawnHere(instanceObject)
{
	return instance_create_depth(self.x, self.y, self.depth, instanceObject);
}