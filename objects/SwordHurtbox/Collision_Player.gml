var delta = GetPositionVector(other).Minus(GetPositionVector(id));
delta.Normalize();
other.TakeDamage(1, delta);