var camera = view_get_camera(0);
var left = camera_get_view_x(camera);
var top = camera_get_view_y(camera);

var xPos = x;
var yPos = y;

gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0, room_width,room_height, false);

draw_set_alpha(1);
draw_sprite(mask, 0, xPos, yPos);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_set_color(fillColor);
draw_rectangle(xPos, yPos, xPos + sprite_get_width(sprite_index) * percentage, yPos + sprite_get_height(sprite_index), false);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_color(c_white);

draw_sprite(sprite_index, 0, xPos, yPos);

// draw_rectangle(xPos, yPos, xPos + sprite_get_width(sprite_index) * percentage, yPos + sprite_get_height(sprite_index), false);