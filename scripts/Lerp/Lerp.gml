
/// @param {Struct.Vector2} valueA
/// @param {Struct.Vector2} valueB
function LerpVector2(valueA, valueB, alpha)
{
	var delta = valueA.Minus(valueB);
	var result = variable_clone(valueA);
	result.Add(delta.TimesReal(-alpha));
	return result;
}