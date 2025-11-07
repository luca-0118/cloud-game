if (!video_switch_pending) {
    if (global.selected_tower != noone) {
        var new_tower = global.towers[global.selected_tower];
        var new_video = global.videos[global.selected_video];

        if (new_tower != current_tower) {
            if (video_opened) {
                video_close();
                video_opened = false;
            }

            pending_tower = new_tower;
            pending_video = new_video;
            video_switch_pending = true;
        }
    }
    else {
        if (video_opened) {
            video_close();
            video_opened = false;
        }
        current_tower = noone;
        current_video = noone;
    }
}
else {
    current_tower = pending_tower;
    current_video = pending_video;

    if (file_exists(current_tower.video_explanation)) {
        video_open(current_tower.video_explanation);
        video_draw();
        video_opened = true;
    }

    video_switch_pending = false;
}