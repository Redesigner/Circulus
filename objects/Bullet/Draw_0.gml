var alpha = (currentLifetime / duration) * .9 + .1;

var drawPosition = LerpVector2(origin, GetPositionVector(id), alpha);
var drawPosition2 = LerpVector2(origin, GetPositionVector(id), alpha * 0.95);
var drawPosition3 = LerpVector2(origin, GetPositionVector(id), alpha * 0.90);
var color = make_color_hsv(294, 255 - alpha * 255, 50 + 200 * alpha);
var tempDirection = arctan2(origin.x - x, origin.y - y ) * 180 / pi - 225;
draw_sprite_ext(sprite_index, image_index, drawPosition3.x, drawPosition3.y, alpha * 0.4, alpha * 0.4, tempDirection, color, 1.0);
draw_sprite_ext(sprite_index, image_index, drawPosition2.x, drawPosition2.y, alpha * 0.7, alpha * 0.7, tempDirection, color, 1.0);
draw_sprite_ext(sprite_index, image_index, drawPosition.x, drawPosition.y, alpha, alpha, tempDirection, color, 1.0);
draw_sprite(Sp_Reticle, (global.gameState.time * sprite_get_speed(Sp_Reticle)) % 2, x, y);