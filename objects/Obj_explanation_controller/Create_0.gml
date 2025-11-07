global.selected_tower = noone;
global.videos = [];

global.videos[0] ={
	name: "Small Tower",
	video: "Small_Tower.mp4",
};

global.videos[1] = {
	name: "Medium Tower",
	video: "Medium_Tower.mp4",
};

global.videos[2] = {
	name: "Big Tower",
	video: "Big_Tower.mp4",
};

global.towers = [];

global.towers[0] = {
    name: "Small Tower",
    description: "Low damage",
    attack: 100,
    speed: 1,
	video_explanation: global.videos[0].video
};

global.towers[1] = {
    name: "Medium Tower",
    description: "Medium damage",
    attack: 200,
    speed: 1,
    video_explanation: global.videos[1].video
};

global.towers[2] = {
    name: "Big Tower",
    description: "High damage",
    attack: 300,
    speed: 1,
	video_explanation: global.videos[2].video
};

