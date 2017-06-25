/// @description Player Movement

//Horizontal Movement Check
var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);
if hinput != 0 {
	hspeed_ += hinput*acceleration_;
	hspeed_ = clamp(hspeed_, -max_hspeed, max_hspeed);
} else {
	hspeed_ = lerp(hspeed_, 0, friction_);
}

//Gravity and Jumping (Contains commented out lines for WIP storeable jump feature)
if !place_meeting(x, y+1, obj_solid){
	vspeed_ += gravity_;
} else if keyboard_check_pressed(vk_up){ //and jump_used = false;
	vspeed_ = jump_height;
	//
	//jump_used = true;
	//
}


//If colliding horizontally, with built in fix for early detection bug
if place_meeting(x+hspeed_, y, obj_solid){
	while !place_meeting(x+sign(hspeed_), y, obj_solid){
		x += sign(hspeed_);
	}
	hspeed_ = 0;
}

//Apply Horizontal Speed
x += hspeed_;

//If Colliding Vertically, With Fix for Early Detection Bug
//(Contains commented out lines for WIP storeable jump feature)
if place_meeting(x, y+vspeed_, obj_solid){
	while !place_meeting(x, y+sign(vspeed_), obj_solid){
		y+= sign(vspeed_);
	}
	vspeed_ = 0;
	//
	//jump_used = false;
	//
}

//Apply Vertical Speed
y += vspeed_;