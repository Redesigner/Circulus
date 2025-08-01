draw_sprite(sprite_index, image_index, x, y);

if (global.drawDebug)
{
	draw_set_color(c_green);
	draw_arrow(x, y, x + velocity.x, y - velocity.y, 4);
	draw_set_color(c_white);
}