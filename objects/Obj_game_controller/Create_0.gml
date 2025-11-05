if (global.Trivia_difficulty = 0)
{
global.trivia_questions = [
    ["Wat doet een cloud engineer?", ["maakt cloud netwerken", "ontwerpt cloud structuren", "Adviseert bedrijven"], 0],
    ["Wat is cloud?", ["Een wolk waar je op magische wijze bestanden kan opslaan", "Een externe computer waar je bestanden kan oplsaan", "Een plek op je eigen computer waar je bestanden kunt opslaan"], 1],
	["Welke van de volgende platforms is géén cloudplatform?", ["Microsoft Azure", "Amazon Web Services (AWS)", "Google Cloud Platform", "Adobe Photoshop"], 3],
];
}

if (global.Trivia_difficulty = 1)
{
	global.trivia_questions = [
	["Wat doet een Cloud Engineer als een server crasht?",[" De server fysiek repareren", "De stroom opnieuw aansluiten", "De server opnieuw configureren of herstellen via cloudbeheer", "Een nieuwe computer kopen"], 2]
];
}

if (global.Trivia_difficulty = 2)
{
	global.trivia_questions = [
	["Wat is een voordeel van werken in de cloud voor bedrijven?", ["Flexibiliteit en lagere kosten", "Meer papierwerk", "Minder toegang tot gegevens", "Minder beveiliging"], 0],];
}
