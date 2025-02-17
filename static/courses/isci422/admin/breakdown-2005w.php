<?
include 'ubc.php';
include 'url.php';

$week[0] = array(
	"Definition",	// section (or blank if same as last)
	"",
	"No lecture",
	"",
	
	"Thinking about science",
	"Prep: find a topic of debate with supporting papers for each side and make 20 copies of each.  One position should be unscientific. See " . url(array('link'=>'http://www.actionbioscience.org/evolution/nhmag.html')) . " for example.
	50|Groups: read papers & discuss quality of scientific content.
	50|Class: discuss scientific content.
	10|Homework: research definitions of science used in debate."
); 

$week[1] = array(
	"",	// section (or blank if same as last)
	"",
	"What is science?",
	"Prep: Print out course syllabus.
	30|Distribute and discuss syllabus.
	20|Discuss definitions found from homework.  What are the essential concepts?  Why?
	30|Discuss the scientific method.
	30|Expand discussion to definition of science.  What is not science?  (Other 'ways of knowing'.)",
	
	"Assignment 1",
	"Prep: Writeup and print Assignment 1 instructions for distribution (1 per group).
	30|Discuss logic of science. Transposition: (If Theory then Evidence supports) == (If not Evidence supports then not Theory).  Goal is to have students discover the concept of falsifiability.
	10|Form groups for Assignment 1.  Distribute assignments.
	40|Groups: Work on Assignment 1.
	30|Class: Contrast theories that are scientific but have been proven false versus unscientific theories.  Eg. plum-pudding model of atom versus &quot;Rik's pet monster&quot;.  A theory that's wrong may still be scientific."
); 

$week[2] = array(
	"",	// section (or blank if same as last)
	"",
	"Our first model (introduction)",
	"Prep: bring signup sheet for Assignment 2.
	50|Discuss role of models in science.
	40|Rik: Start chipmunk model.
	20|Assignment 2: distribute signup sheet.  Students must bring typical walk & run speeds for their animal next lecture.",
	
	"Project 1",
	"Prep: Bring Project 1 handouts and topic list.
	20|Assign groups (of 4) and topics (2 per group) for Project 1.
	Project 1 (due at lecture in two weeks).
	>60|Go to library and find 2 papers (one on each topic) that employ models.
	>30|Return to class to have papers reviewed.
	>Homework: Prepare write-up for Lec 4."
); 

$week[3] = array(
	"",	// section (or blank if same as last)
	"",
	"Our first model (conclusion)",
	"Prep: bring projector & laptop w/ spreadsheet for Assignment 2.
	30|Fill in spreadsheet from data provided by students (give students credit for Assignment 2).
	30|Discuss chipmunk model.  How good was it?  How could it be improved?  What else could account for relationship?
	50|Discuss models in general.  What are they for?  How do they relate to theory and experiments?",
	
	"Model evaluation",
	"30|Discuss stepping-stone model of scientific models.  How do models relate to theories and experiments?
	30|Discuss how to determine the quality of a model (hint: understanding/predictions, simplicity).
	30|Groups (from Project 1): Come up with a valuation system/currency for models. Eg. How many evolutions is relativity worth? Rate your models on this scale.
	20|Presentations of valuation systems."
); 

$week[4] = array(
	"",	// section (or blank if same as last)
	"",
	"Model definition",
	"Prep: make handouts for Project 2.
	15|Project 1 groups all write their definition of scientific model on the blackboard.
	20|Each group reads out their definition.
	15|Vote for the best(?) definition.  (Award bonus mark to winning group(s).)
	40|Discuss definition of scientific model.  What are minimal/essential ingredients?
	20|Distribute handouts for and discuss Project 2.  Groups will be assigned in seminar.",
	
	"Styles of models",
	"30|Discuss: how can we classify models?  By what criterion?  Why?  How does classification aid us?  (Hint: don't segregate by disciplines.)
	30|Form groups.  Come up with a taxonomy of models.
	30|Discuss: which group has the most useful taxonomy?  Why?  (Vote: Points for best?)
	20|Assign groups for Project 2 (due Lecture 7).  Work time."
); 

$week[5] = array(
	"Deconstruction",	// section (or blank if same as last)
	"",
	"Analytical modeling",
	"10|How do analytic models (specifically: Reaction Kinetics) relate to other models?  (Taxonomy)
	10|Match up strong and weak math students.
	20|Review reaction kinetics (eg. A + 2B --> 3B + 4C).
	20|Analytical methods: nullclines & flows.
	40|Go through as many examples as possible: Birth, Death, Birth+Death, Competition, Predation.
	10|Assignment 5: As partners, extend the last model in some way. Get instructor approval before the end of class.  Solve for nullclines and draw flows.  Discuss the strengths and weaknesses of analytical modeling.  Due next lecture.  Partners may work together but must submit their own work.
	Prep: Instruct class this week's seminar held in LSK 303E (ISP computer lab).",
	
	"Numerical modeling",
	"20|Match up strong and weak computer students.
	60|Jeff leads class through examples of numerical modeling
	30|Assignment 7: As partners, extend the last model in some way.  Get instructor approval before the end of class.  Numerically compute the population dynamics and draw graph.  Discuss the strengths and weaknesses of numerical modeling.  Due next seminar.  Partners may work together but must submit their own work."
); 

$week[6] = array(
	"",	// section (or blank if same as last)
	"",
	"Numerical & physical modeling (Douw Steyn)",
	"Prep: bring guest lecture forms to class.
	Prep: Instruct class this week's seminar held in LSK 303E (ISP computer lab).
	100|Guest lecture: Douw talking about analytic, numerical, and scale modeling in atmospheric science.
	10|Collect completed guest lecture forms.",
	
	"Multi-agent simulation",
	"100|Walk students through successively more complicated examples of using NetLogo to build agent-based models.
	10|Assignment (Multiagent homework): Working in pairs, extend the last model we developed in class some way.  Get approval on extension before leaving class.  Add plot to show dynamics.  Email .nlogo file to Rik.  Also, working separately, write up one page: strengths and weaknesses of agent-based modeling."
); 

$week[7] = array(
	"",	// section (or blank if same as last)
	"",
	"Physical modeling (Gordon Bates)",
	"Prep: bring guest lecture forms to class.
	Prep: Instruct class this week's seminar held in LSK 303E (ISP computer lab).
	100|Guest lecture: Gordon talking about scale models in chemistry.
	10|Collect completed guest lecture forms.",
	
	"Physical/numerical modeling",
	"Prep: make handouts for Project 3.
	30|Project 3: Distribute handouts and explain.
	70|Walk students through successively more complicated examples of using Working Model to build pseudo-physical models.
	10|Assignment (Physical homework): ???"
); 

$week[8] = array(
	"",	// section (or blank if same as last)
	"",
	"Animal models (Charles Darveau)",
	"Prep: bring guest lecture forms to class.
	100|Guest lecture: Charles talking about animal models in physiology.
	10|Collect completed guest lecture forms.",
	
	"Project 3: Brainstorming",
	"10|Form groups of 3.  Explain plan: to brainstorm a research question.
	30|Storm: Each member takes 10 minutes to come up with as many ideas for investigation as possible.  No criticism or justification.  Just a long list (at least 10).
	10|Reflection: Individually review possibilities, eliminate all but three favourites.
	30|Discussion: New groups of 3.  Each member explores favourite ideas and gets suggestions from others.  Is it scientific?  
	30|Inspiration write-up.  Individually write up 1 page explaining best research question (or 1 page for each idea).
	Project 3 homework: Start working on lit search (due next sem).  Inspiration will be returned next lecture to give students direction."
); 

$week[9] = array(
	"Construction",	// section (or blank if same as last)
	"",
	"KISS principle / Model evolution",
	"10|Form 4 groups.  Introduce an odd phenomenon (Richat structure?). Groups will try to explain it.  
	60|Repeated loop:
	>Come up with three possible explanations.  Indicate plausibility of each.  (Lesson: simplest is best.)
	>Each group conducts one &quot;experiment&quot;--can ask us one Yes/No question about a measurable property. (Lesson: experiments should be designed to falsify some explanations.)
	>Eliminate inconsistent explanations.  (Lesson: models/explanations change as new knowledge is learnt.)	
	20|Reinforce concepts of simplicity, experimental falsification, and evolution of models.  (Spiral mnemonic.)",
	
	"Project 3: Refinement",
	"10|Project 3 homework: Start working on proposal (due next sem).  Lit search will be returned next lecture to give students direction."
); 

$week[10] = array(
	"",	// section (or blank if same as last)
	"",
	"Games",
	"Prep: Instruct class this week's seminar held in LSK 303E (ISP computer lab).
	10|Get students to create accounts on game theory server.
	10|Hand back Project 3 lit search.  Discuss proposal.
	10|Explain rules of the games.
	15|Game #1 - Practice.  Review and answer questions.
	20|Game #2 - Winner Takes All.  Explain that only highest score will get bonus points.
	20|Game #3 - Divide The Pie.  Bonus points divided proportionally to score.
	20|(If time allows.) Game #4 - Random Neighbours.  Divide The Pie reward but will have different neighbours every round.
	5|Wrap up.  Explain the point of this experiment.",
	
	"Project 3: Development",
	"100|Work period.  Students can work on projects in computer lab.
	10|Project 3 homework: Start constructing model (prototype due next sem).  Proposals will be returned next lecture to give direction."
); 

$week[11] = array(
	"",	// section (or blank if same as last)
	"",
	"Wrap up",
	"Prep: bring teaching evaluations to class.
  	20|Complete teaching evaluations.
	30|Review final exam.
  	30|Discuss framework for report.
  	30|Help students with projects.",
	
	"Project 3: Prototype",
	"Prep: Bring student rubrics."
); 

$week[12] = array(
	"",	// section (or blank if same as last)
	"",
	"Project 3: Posters",
	"Prep: Bring tape and student+teacher rubrics.
	10|Hang posters around room and distribute student rubrics.
	50|Count off every other presenter.  Have first half walk around room visiting presenters.
	50|Switch.  Collect student rubrics and posters at end.",
	
	"Project 3: Demo",
	""
); 

$weight["Assignment 1"] = 1;	$due["Assignment 1: Definition"] = "lec02, lec-start";	// groups
$weight["Assignment 2"] = 1;	$due["Assignment 2: Speeds"] = "lec03, lec-start";	// pass fail
$weight["Assignment 3"] = 1;	$due["Assignment 3: Evaluation"] = "sem03a, sema-end / sem03b, semb-end";	// pass/fail
$weight["Assignment 4"] = 1;	$due["Assignment 4: Taxonomy"] = "sem04a, sema-end / sem04b, semb-end";	// pass/fail
$weight["Assignment 5"] = 2;	$due["Assignment 5: Analytic"] = "lec06, lec-start";	// pairs
$weight["Assignment 6"] = 1;	$due["Assignment 6: Guest"] = "lec06, lec-end";	// Douw
$weight["Assignment 7"] = 2;	$due["Assignment 7: Numeric"] = "sem06a, sema-start / sem06b, semb-start";	// pairs
$weight["Assignment 8"] = 1;	$due["Assignment 8: Guest"] = "lec07, lec-end";	// Gordon
$weight["Assignment 9"] = 2;	$due["Assignment 9: Multiagent"] = "sem07a, sema-start / sem07b, semb-start";	// pairs
$weight["Assignment 10"]= 1;	$due["Assignment 10: Guest"] = "lec08, lec-end";	// Charles
$weight["Assignment 11"]= 2;	$due["Assignment 11: Physical"] = "sem08a, sema-start / sem08b, semb-start";	// pairs

$weight["Project 1: Report"] = 9;		$due["Project 1: Report"] = "Start of lecture lec04, lec-start";
$weight["Project 1: Definition"] = 1;	$due["Project 1: Definition"] = "Start of lecture lec04, lec-start";
$weight["Project 2: Report"] = 20;		$due["Project 2: Report"] = "Start of lecture lec07, lec-start";
$weight["Project 3: Inspiration"] = 2;	$due["Project 3: Inspiration"] = "Seminar sem08a / sem08b, in class";
$weight["Project 3: Literature search"]=4;$due["Project 3: Literature search"] = "Start of seminar sem09a, sema-start / sem09b, semb-start";
$weight["Project 3: Proposal"] = 6;		$due["Project 3: Proposal"] = "Start of seminar sem10a, sema-start / sem10b, semb-start";
$weight["Project 3: Prototype"] = 2;	$due["Project 3: Prototype"] = "Start of seminar sem11a, sema-start / sem11b, semb-start";
$weight["Project 3: Demonstration"] = 2;$due["Project 3: Demonstration"] = "Start of seminar sem12a, sema-start / sem12b, semb-start";
$weight["Project 3: Poster"] = 4;		$due["Project 3: Poster"] = "Start of lecture lec12, lec-start";
$weight["Project 3: Report"] = 20;		$due["Project 3: Report"] = "proj3due, lec-end at Rik's office, LSK 303B";
$weight["Best Project"] = 5;		
$weight["Final Exam"] = 10;				$due["Final Exam"] = "";

$year = 2006;
$datetimes = array(
	'first-class' => 'Jan 8',	'last-class' => 'Apr 11',
//							'sem00a' => 'Jan 4',	'sem00b' => 'Jan 6',  
	'lec01' => 'Jan 8',		'sem01a' => 'Jan 10',	'sem01b' => 'Jan 12',
	'lec02' => 'Jan 15',	'sem02a' => 'Jan 17',	'sem02b' => 'Jan 19',
	'lec03' => 'Jan 22',	'sem03a' => 'Jan 24',	'sem03b' => 'Jan 26',
	'lec04' => 'Jan 29',	'sem04a' => 'Jan 31',	'sem04b' => 'Feb 2',  
	'lec05' => 'Feb 5',		'sem05a' => 'Feb 7',	'sem05b' => 'Feb 9', 
	'lec06' => 'Feb 12',	'sem06a' => 'Feb 14',	'sem06b' => 'Feb 16',
	'lec07' => 'Feb 26',	'sem07a' => 'Feb 28',	'sem07b' => 'Mar 2',  
	'lec08' => 'Mar 5',		'sem08a' => 'Mar 7',	'sem08b' => 'Mar 9', 
	'lec09' => 'Mar 12',	'sem09a' => 'Mar 14',	'sem09b' => 'Mar 16',
	'lec10' => 'Mar 19',	'sem10a' => 'Mar 21',	'sem10b' => 'Mar 23',
	'lec11' => 'Mar 26',	'sem11a' => 'Mar 28',	'sem11b' => 'Mar 30',
	'lec12' => 'Apr 2',		'sem12a' => 'Apr 4',	'sem12b' => 'Apr 11',
	'proj3due' => 'Apr 10',
	'lec-start' => '12pm',	'sema-start' => '12pm',	'semb-start' => '12pm',
	'lec-end' => '2pm',		'sema-end' => '2pm',	'semb-end' => '2pm',
);
$dayofweek['lec'] = strftime('%a', strtotime($datetimes['lec01'] . ', ' . $year));
$dayofweek['sema'] = strftime('%a', strtotime($datetimes['sem01a'] . ', ' . $year));
$dayofweek['semb'] = strftime('%a', strtotime($datetimes['sem01b'] . ', ' . $year));

$room['lec'] = ubcRoom("LSK",462);
$room['sema'] = ubcRoom("LSK",462);
$room['semb'] = ubcRoom("LSK",462);

function prettydatetime($dt) {
	global $datetimes;
	foreach ($datetimes as $code => $replace) {
		$dt = str_replace($code, $replace, $dt);
	}
	return $dt;
}

function prettydue($task) {
	global $due;
	return prettydatetime($due[$task]);
}

function prettyweight($task) {
	global $weight;
	$pw = 0;
	foreach ($weight as $code => $value) {
		// if they match up to length of $task then add (eg. match all "Project 1")
		if (strncmp($task, $code, strlen($task)) == 0) $pw += $value;
	}
	return $pw;
}

function weekdates($wk) {
	global $week, $datetimes;
	if (!array_key_exists($wk, $week))	return;	// error trap
	
	if ($wk < 10)	$wk = "0$wk";
	$start = "lec$wk";		if (!array_key_exists($start, $datetimes))	$start = "sem${wk}a";
	$end   = "sem${wk}b";	if (!array_key_exists($end, $datetimes))	$end   = "sem${wk}a";
	return "$start - $end";
}

function sectitle($wk) {
// section title
	global $week;
	if (!array_key_exists($wk, $week))	return;	// error trap
	return $week[$wk][0];
}

function lectitle($wk) {
// lecture title
	global $week;
	if (!array_key_exists($wk, $week))	return;	// error trap
	return $week[$wk][2];
}

function semtitle($wk) {
// seminar title
	global $week;
	if (!array_key_exists($wk, $week))	return;	// error trap
	return $week[$wk][4];
}

function numweeksinsection($wk) {
// how many weeks are there in the current section of the course?
	global $week;
	if (!array_key_exists($wk, $week))	return 0;	// error trap
	// find first week of current section
	while (sectitle($wk) == '' && array_key_exists($wk, $week)) $wk--;
	$first = $wk;
	// find first week of next section
	$wk++;
	while (sectitle($wk) == '' && array_key_exists($wk, $week))	$wk++;
	return $wk - $first;
}
?>
