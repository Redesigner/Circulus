function SpawnHere(instanceObject)
{
	return instance_create_layer(self.x, self.y, self.layer, instanceObject);
}