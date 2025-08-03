var alpha = currentLifetime / duration;
if (alpha > 0.5)
{
	alpha *= 1;
}
var drawPosition = LerpVector2(origin, GetPositionVector(id), alpha);
draw_sprite_ext(sprite_index, image_index, drawPosition.x, drawPosition.y, alpha, alpha, 0, c_white, 1.0);
draw_sprite(Sp_Reticle, (global.gameState.time * sprite_get_speed(Sp_Reticle)) % 2, x, y);