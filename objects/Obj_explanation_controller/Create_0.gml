global.selected_tower = noone;
global.towers = [];

global.towers[0] = {
    name: "Small Tower",
    description: "Low damage",
    attack: 100,
    speed: 1,
	video_explanation: global.videos[0]
};

global.towers[1] = {
    name: "Medium Tower",
    description: "Medium damage",
    attack: 200,
    speed: 1,
    video_explanation: global.videos[1]
};

global.towers[2] = {
    name: "Big tower",
    description: "High damage",
    attack: 300,
    speed: 1,
	video_explanation: global.videos[2]
};

global.videos = [];

global.videos[0] = "Small_Tower.mp4";
global.videos[1] = "Medium_Tower.pm4";
global.videos[2] = "Big_Tower.mp4";