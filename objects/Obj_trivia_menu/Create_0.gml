/// @description Trivia Popup
text_color = #FFFFFF;
text_outline_color = #000000;
// Zorg dat je weet waar het midden van het scherm is
var screen_w = display_get_gui_width();
var screen_h = display_get_gui_height();

var center_x = screen_w / 2;
var center_y = screen_h / 2;

// Kies een willekeurige vraag
if (variable_global_exists("returning_from_wrong") && global.returning_from_wrong && variable_global_exists("last_trivia_index")) {
    // hergebruik dezelfde vraag index
    var index = global.last_trivia_index;
    global.returning_from_wrong = false;
    global.index = index;
    var q = global.trivia_questions[global.index];
} 

else {
	// kies een nieuwe vraag (nieuwe index).
    var lengte = array_length(global.trivia_questions);
    if (lengte <= 0) {
		// toon wanneer er geen vragen meer over zijn.
        question_text = "No trivia questions left.";
        answers = ["OK"];
        correct_answer = 0;
    } else {
        var index = irandom(lengte - 1);
        global.index = index;
        var q = global.trivia_questions[index];

        // bewaar index
        global.last_trivia_index = index;

        // array_delete(global.trivia_questions, index, 0); 
    }
}


question_text = q[0];
answers = q[1];
correct_answer = q[2];

array_delete(global.trivia_questions, index, 0);

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