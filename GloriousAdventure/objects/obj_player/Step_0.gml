var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (_hor == 0 or _ver == 0)
{
    _hspeed = _MAX_SPEED;
    _vspeed = _MAX_SPEED;
    
    move_and_collide(_hor * _hspeed, _ver * _vspeed, tilemap);
}

else 
{
    // Normalize diagonal speed. 
    _hspeed = _MAX_SPEED / sqrt(2);
    _vspeed = _MAX_SPEED / sqrt(2);
    
    move_and_collide(_hor * _hspeed, _ver * _vspeed, tilemap);
}


if (_hor != 0 or _ver != 0)
{
    if (_ver > 0) sprite_index = spr_player_walk_down;
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left;
}

else 
{
    if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
}