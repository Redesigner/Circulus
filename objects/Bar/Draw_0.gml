var camera = view_get_camera(0);
var left = camera_get_view_x(camera);
var top = camera_get_view_y(camera);

draw_sprite_stretched(Sp_HealthbarFill, 0, x + left, y + top, sprite_width * percentage, sprite_height);
draw_sprite_stretched(Sp_HealthbarBorder, 0, x + left, y + top - 1, sprite_width, sprite_height + 2);