var alpha = currentLifetime / lifetime;
if (alpha > 0.5)
{
	alpha *= 1;
}
var drawPosition = LerpVector2(GetPositionVector(id), targetPosition, alpha);
draw_sprite_ext(sprite_index, image_index, drawPosition.x, drawPosition.y, alpha, alpha, 0, c_white, 1.0);
draw_sprite(Sp_Reticle, 1, targetPosition.x, targetPosition.y);