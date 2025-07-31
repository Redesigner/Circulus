event_inherited();

var result = Raycast(new Vector2(x, 0), new Vector2(x, room_height), layer_tilemap_get_id("Floor"));
y = ceil(result.y);