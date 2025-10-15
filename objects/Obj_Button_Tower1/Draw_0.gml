/// @description Tower1 Explanation Button

if (is_playing) {
    draw_sprite(sGif1, anim_frame, x, y);
} 

else {
    draw_sprite(sIdle1, 0, x, y);
}

draw_self();
