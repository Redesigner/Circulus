var camera = view_get_camera(0);
var left = camera_get_view_x(camera);
var top = camera_get_view_y(camera);

draw_sprite(sprite_index, 0, left * factor, top);