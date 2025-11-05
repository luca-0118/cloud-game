if (global.Trivia_difficulty = 0)
{
global.trivia_questions = [
    ["Wat doet een cloud engineer?", ["maakt cloud netwerken", "ontwerpt cloud structuren", "Adviseert bedrijven"], 0],
    ["Wat is cloud?", ["Een wolk waar je op magische wijze bestanden kan opslaan", "Een externe computer waar je bestanden kan oplsaan", "Een plek op je eigen computer waar je bestanden kunt opslaan"], 1],
	["Wat doet een Cloud Engineer als een server crasht?",[" De server fysiek repareren", "De stroom opnieuw aansluiten", "De server opnieuw configureren of herstellen via cloudbeheer", "Een nieuwe computer kopen"], 2],
	["Welke van de volgende platforms is géén cloudplatform?", ["Microsoft Azure", "Amazon Web Services (AWS)", "Google Cloud Platform", "Adobe Photoshop"], 3],
	["Wat is een voordeel van een hybride cloud?", ["Volledige afhankelijkheid van één provider", "Flexibiliteit om workloads te verplaatsen tussen privé en publieke cloud", "Alleen beschikbaar voor grote ondernemingen", "Geen beveiligingscontrole nodig"], 1],
	["Wat betekent ‘elasticity’ in de cloud?", ["Het vermogen om fysieke servers te vervangen", "Het handmatig uitbreiden van capaciteit", "Het automatisch schalen van resources op basis van de vraag", " Het beperken van toegang tot data"], 2],
	["Wat is het voordeel van auto-scaling?", ["Minder fouttolerantie", "Hogere kosten", "Automatische aanpassing aan wisselende belasting", "Minder beschikbaarheid"], 2],
	["Wat is latency in cloud computing?", ["Hoeveel opslag beschikbaar is", "De vertraging tussen verzoek en antwoord", "De hoeveelheid CPU", "De uptime van servers"], 1],
	["Wat doet Cloud Monitoring?", ["Verzamelt en analyseert metrics", "Start servers", "Versleutelt data", "Verwijdert logs"], 0],
	["Wat betekent high availability?", ["Een systeem dat 24/7 online is, zelfs bij storingen", "Een back-up", "Een tijdelijke testomgeving", "Een enkelvoudige serverconfiguratie"], 0],
	["Wat betekent pay-as-you-go pricing?", ["Je betaalt vooraf voor alle resources", "Je betaalt alleen voor wat je gebruikt", "Gratis gebruik van cloud", "Maandelijks vast tarief"], 1],
];
}

if (global.Trivia_difficulty = 1)
{
	global.trivia_questions = [
	["Wat is GCE (Google Compute Engine)?", ["Object storage", "Virtuele machine service", "Container registry", "Messaging queue"], 1],
	["Wat is het belangrijkste kenmerk van cloud computing?", ["Hoge hardwarekosten", "Schaalbaarheid en elasticiteit", "Handmatige provisioning", "Offline toegankelijkheid"], 1],
	["Wat betekent on-demand self-service in de cloudcontext?", ["Gebruikers moeten servers handmatig aanvragen", "Beheerders moeten elke wijziging goedkeuren", "Alleen ontwikkelaars kunnen resources beheren", "Resources worden automatisch geleverd zonder menselijke tussenkomst"],3],
	["Welke component beheert de virtuele servers in een cloudomgeving?", ["Hypervisor", "Load balancer", "Firewall", "API Gateway"], 0],
	["Wat is een voordeel van containerisatie?", ["Containers draaien alleen op Windows", "Containers zijn zwaar en traag", "Containers isoleren applicaties en verbeteren portabiliteit", "Containers vereisen geen OS"] , 2],
	["Wat is serverless computing?", ["Er zijn geen servers betrokken", "De provider beheert servers, en code draait alleen op aanvraag", "Gebruiker beheert zijn eigen fysieke servers", "Alleen opslag wordt gedeeld"], 1],
	["Wat is de shared responsibility model in de cloud?", ["Alleen de provider is verantwoordelijk voor beveiliging", "Klant en provider delen beveiligingsverantwoordelijkheden", "Alleen de klant is verantwoordelijk", "Beveiliging is optioneel"], 1],
	["Wat is Infrastructure as Code?", ["Infrastructuur beheren via code in plaats van handmatige configuratie", "Handmatig servers installeren", "Alleen software schrijven", "Backups automatiseren"], 0],
	["Wat is disaster recovery (DR)?", ["Regelmatige software-updates", "Strategie om systemen te herstellen na uitval", "Verwijderen van oude data", "Kostenoptimalisatie"], 1],
	["Wat is Cloud Native?", ["Traditionele applicatie in de cloud zetten", "On-premises software", "Offline tools", "Applicaties ontworpen specifiek voor cloudomgevingen"], 3],
	["Wat is data redundancy?", ["Onnodige data verwijderen", "Kopieën van data opslaan voor betrouwbaarheid", "Data minimaliseren", "Compressie toepassen"], 1],
	
	];
}

if (global.Trivia_difficulty = 2)
{
	global.trivia_questions = [
	["Wat is een voordeel van werken in de cloud voor bedrijven?", ["Flexibiliteit en lagere kosten", "Meer papierwerk", "Minder toegang tot gegevens", "Minder beveiliging"], 0],
	["Welke GCP-service biedt serverless functies?", ["Cloud SQL", "Cloud Functions", "Cloud Run", "Cloud Spanner"], 1],
	["Wat is GCP BigQuery?", ["Een relationele database", "Een object storage", "Een data warehouse", "Een compute-engine"], 2],
	["Wat doet een load balancer?", ["Beveiligt data tegen verlies", "Verdeelt netwerkverkeer over meerdere servers", "Beperkt toegang tot applicaties", "Houdt gebruikersstatistieken bij"], 1],
	["Wat is de primaire functie van IAM (Identity and Access Management)?", ["Het beheren van netwerkverkeer", "Het beheren van opslagcapaciteit", "Het maken van backups", "Het beheren van gebruikersrechten en toegang"],3],
	["Wat is multi-tenancy in de cloud?",  ["Elke klant heeft een volledig aparte fysieke server", "Meerdere klanten delen dezelfde infrastructuur logisch gescheiden", "Alleen publieke clouds gebruiken dit", "Het is een back-upstrategie"], 1],
	["Wat is observability in cloud engineering?", ["Vermogen om systeemgedrag te begrijpen via metrics, logs en traces", "Het aantal servers dat je kunt zien", "De zichtbaarheid van data voor klanten", "Monitoring van gebruikersactiviteit"], 0],
	["Wat is cloud orchestration?", ["Het coördineren van geautomatiseerde cloudtaken", "Handmatig beheer", "Backups maken", "Data repliceren"], 0],

	];
}
