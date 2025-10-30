/// @description Trivia Popup
text_color = #FFFFFF;
text_outline_color = #000000;
// Zorg dat je weet waar het midden van het scherm is
var screen_w = display_get_gui_width();
var screen_h = display_get_gui_height();

var center_x = screen_w / 2;
var center_y = screen_h / 2;

// Kies een willekeurige vraag
var lengte = array_length(global.trivia_questions);
var index = irandom(lengte - 1);
var q = global.trivia_questions[index];

question_text = q[0];
answers = q[1];
correct_answer = q[2];

// Startpositie voor knoppen, onder de vraag
var start_y = center_y + 50;

// Maak knoppen aan
for (var i = 0; i < array_length(answers); i++) {
    var btn_y = start_y + i * 140; // ruimte tussen knoppen
    var btn = instance_create_layer(center_x, btn_y, "GUI", Obj_button_answer);
    btn.answer_text = answers[i];
    btn.answer_index = i;
    btn.correct_index = correct_answer;
}