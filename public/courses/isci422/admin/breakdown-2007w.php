<?
include 'ubc.php';
include 'url.php';

$year = 2008;
$datetimes = array(
	'first-class' => 'Jan 7',	'last-class' => 'Apr 11',
//							'sem00a' => 'Jan 4',	'sem00b' => 'Jan 6',  
	'lec01' => 'Jan 7',		'sem01a' => 'Jan 9',		'sem01b' => 'Jan 11',
	'lec02' => 'Jan 14',	'sem02a' => 'Jan 16',	'sem02b' => 'Jan 18',
	'lec03' => 'Jan 21',	'sem03a' => 'Jan 23',	'sem03b' => 'Jan 25',
	'lec04' => 'Jan 28',	'sem04a' => 'Jan 30',	'sem04b' => 'Feb 1',  
	'lec05' => 'Feb 4',		'sem05a' => 'Feb 6',		'sem05b' => 'Feb 8', 
	'lec06' => 'Feb 11',	'sem06a' => 'Feb 13',	'sem06b' => 'Feb 15',
	'lec07' => 'Feb 25',	'sem07a' => 'Feb 27',	'sem07b' => 'Feb 29',  
	'lec08' => 'Mar 3',		'sem08a' => 'Mar 5',		'sem08b' => 'Mar 7', 
	'lec09' => 'Mar 10',	'sem09a' => 'Mar 12',	'sem09b' => 'Mar 14',
	'lec10' => 'Mar 17',	'sem10a' => 'Mar 19',	'sem10b' => 'Mar 21',
	'lec11' => 'Mar 24',	'sem11a' => 'Mar 26',	'sem11b' => 'Mar 28',
	'lec12' => 'Mar 31',	'sem12a' => 'Apr 2',		'sem12b' => 'Apr 4',
	'lec13' => 'Apr 7',		'sem13a' => 'Apr 9',		'sem13b' => 'Apr 11',
	'proj3due' => 'Apr 15',
	'lec-start' => '12pm',	'sema-start' => '12pm',	'semb-start' => '12pm',
	'lec-end' => '2pm',		'sema-end' => '2pm',	'semb-end' => '2pm',
);

$week[1] = array(
	"Definition",	// section (or blank if same as last)
	"",
	"Science in context",
	"Prep: Print out course syllabus.
	Prep: find a topic of debate with supporting papers for each side and make copies for every student.  One position should be unscientific. See " . url(array('link'=>'http://www.actionbioscience.org/evolution/nhmag.html')) . " for example.
	30|Distribute and discuss syllabus.
	30|Discuss the scientific method.
	45|Expand discussion to definition of science.  What is not science?  (Other 'ways of knowing'.)
	5|Homework: Read debate papers before this week's seminar.  Focus: Which arguments are scientific and which aren't?  Why?",
	
	"What is science?",
	"Prep: Print and bring Assignment 1 instructions (1 per group).
	10|Assign groups for class discussion & Assignment 1.
	30|Groups: discuss scientific merits of arguments & definition of science.
	30|Class: discuss same.
	30|Discuss logic of science. Transposition: (If Theory then Evidence supports) == (If not Evidence supports then not Theory).  Goal is to have students discover the concept of falsifiability.
	10|Homework: Assign groups for Assignment 1 (how would you test evolution vs. ID?)."
); 

$week[2] = array(
	"",	// section (or blank if same as last)
	"",
	"Definition of science",
	"Prep: make handouts for Project 1 & bring topic list.
	Prep: bring signup sheet for Assignment 2.
	20|Have groups write definitions of science on board.
	30|Discuss definitions of science.  What's common?  What's different?  What's missing?  What's superfluous?
	30|Contrast theories that are scientific but have been proven false versus unscientific theories.  Eg. plum-pudding model of atom versus &quot;Jeff's(?) pet monster&quot;.  A theory that's wrong may still be scientific.
	10|Assignment 2: distribute signup sheet.  Students must bring typical walk & run speeds for their animal next lecture.
	20|Project 1: Distribute handouts and assign groups.  Assign topics.  (Must email source papers to us by Mon.)",

	"Project 2: Brainstorming",
	"Prep: make handouts for Project 2.
	15|Project 2: Distribute handouts and explain.
	5|Form groups of 3.  Explain plan: to brainstorm a research question.
	30|Storm: Each member takes 10 minutes to come up with as many ideas for investigation as possible.  No criticism or justification.  Just a long list (at least 10).
	10|Reflection: Individually review possibilities, eliminate all but three favourites.
	30|Discussion: New groups of 3.  Each member explores favourite ideas and gets suggestions from others.  Are they scientific?
	20|Wrap up?"
); 

$week[3] = array(
	"",	// section (or blank if same as last)
	"",
	"Our first model",
	"Prep: bring projector & laptop w/ spreadsheet for Assignment 2.
	50|Develop model of walking.  Invoke theories of evolution (energy minimization) & Newton's laws (pendulum period).
	30|Fill in spreadsheet from data provided by students (give students credit for Assignment 2).
	30|Discuss chipmunk model.  How good was it?  How could it be improved?  What else could account for relationship?",

	"Models in science",
	"50|Discuss models in general.  What are they for?  How do they relate to theory and experiments?
	30|Discuss stepping-stone model of scientific models. Theory <--> Model <--> Experiment, related through hypotheses and tests.
	30|Groups: Come up with concrete examples of these elements."
); 

/*
	"Model evaluation",
	30|Discuss how to determine the quality of a model (hint: understanding/predictions, simplicity).
	30|Groups (from Project 1): Come up with a valuation system/currency for models. Eg. How many evolutions is relativity worth? Rate your models on this scale.
	20|Presentations of valuation systems."
*/

$week[4] = array(
	"",	// section (or blank if same as last)
	"",
	"Model definition",
	"20|Project 1 groups all write their definition of scientific model on the blackboard.
	20|Each group reads out their definition.
	20|Vote for the best(?) definition.  (Award bonus mark to winning group(s).)
	50|Discuss definition of scientific model.  What are minimal/essential ingredients?",
	
	"Taxonomy of models",
	"20|Explain Project 1 Stage 2.
	20|Discuss: how should we classify models?  By what criterion?  Why?  How does classification aid us?  (Hint: don't segregate by disciplines.)
	30|Form groups.  Come up with a taxonomy of models.
	30|Discuss: which group has the most useful taxonomy?  Why?  (Vote: Points for best?)
	10|Explain Project 2 lit search assignment.  Due next seminar."
); 

$week[5] = array(
	"Deconstruction",	// section (or blank if same as last)
	"",
	"Reaction kinetics & analytic modeling I",
	"10|How do analytic models (specifically: Reaction Kinetics) relate to other models?  (Taxonomy)
	10|Match up strong and weak math students.
	20|Review reaction kinetics (eg. A + 2B --> 3B + 4C).
	20|Analytical methods: nullclines & flows.
	40|Go through as many examples as possible: Birth, Death, Birth+Death, Competition, Predation.
	10|Assignment (Analytic homework): As partners, extend the last model in some way. Get instructor approval before the end of class.  Solve for nullclines and draw flows.  Discuss the strengths and weaknesses of analytical modeling.  Due next lecture.  Partners may work together but must submit their own work.",
	
	"Numeric modeling I",
	"Prep: Instruct class this week's seminar held in LSK 464 (ISP computer lab).
	10|How do numerical models relate to other models?  (Taxonomy)
	10|Match up strong and weak computer students.
	80|Jeff leads class through examples of numerical modeling
	10|Assignment (Numerical homework): As partners, extend the last model in some way.  Get instructor approval before the end of class.  Numerically compute the population dynamics and draw graph.  Discuss the strengths and weaknesses of numerical modeling.  Due next seminar.  Partners may work together but must submit their own work."
); 

$week[6] = array(
	"",	// section (or blank if same as last)
	"",
	"Multi-agent simulation I",
	"Prep: Instruct class this week's seminar held in LSK 464 (ISP computer lab).
	10|Hand back Project 2 lit search.  Discuss proposal.
	10|How do numerical models relate to other models?  (Taxonomy)
	10|Match up strong and weak computer students.
	70|Walk students through successively more complicated examples of using NetLogo to build agent-based models.
	10|Assignment (Multiagent homework): Working in pairs, extend the last model we developed in class some way.  Get approval on extension before leaving class.  Add plot to show dynamics.  Email .nlogo file to Rik.  Also, working separately, write up one page: strengths and weaknesses of agent-based modeling.",

	"Reaction kinetics II",
	"10|How do analytic models (specifically: Reaction Kinetics) relate to other models?  (Taxonomy)
	10|Match up strong and weak math students.
	20|Review reaction kinetics (eg. A + 2B --> 3B + 4C).
	20|Analytical methods: nullclines & flows.
	40|Go through as many examples as possible: Birth, Death, Birth+Death, Competition, Predation.
	10|Assignment (Analytic homework): As partners, extend the last model in some way. Get instructor approval before the end of class.  Solve for nullclines and draw flows.  Discuss the strengths and weaknesses of analytical modeling.  Due next lecture.  Partners may work together but must submit their own work."
); 

$week[7] = array(
	"",	// section (or blank if same as last)
	"",
	"Analytic modeling  II",
	"10|How do analytic models (specifically: Reaction Kinetics) relate to other models?  (Taxonomy)
	10|Match up strong and weak math students.
	20|Review reaction kinetics (eg. A + 2B --> 3B + 4C).
	20|Analytical methods: nullclines & flows.
	40|Go through as many examples as possible: Birth, Death, Birth+Death, Competition, Predation.
	10|Assignment (Analytic homework): As partners, extend the last model in some way. Get instructor approval before the end of class.  Solve for nullclines and draw flows.  Discuss the strengths and weaknesses of analytical modeling.  Due next lecture.  Partners may work together but must submit their own work.",
	
	"Numeric modeling II",
	"Prep: Instruct class this week's seminar held in LSK 464 (ISP computer lab).
	10|How do numerical models relate to other models?  (Taxonomy)
	10|Match up strong and weak computer students.
	80|Jeff leads class through examples of numerical modeling
	10|Assignment (Numerical homework): As partners, extend the last model in some way.  Get instructor approval before the end of class.  Numerically compute the population dynamics and draw graph.  Discuss the strengths and weaknesses of numerical modeling.  Due next seminar.  Partners may work together but must submit their own work."
); 

$week[8] = array(
	"",	// section (or blank if same as last)
	"",
	"Multi-agent simulation II",
	"Prep: Instruct class this week's seminar held in LSK 464 (ISP computer lab).
	10|Hand back Project 2 lit search.  Discuss proposal.
	10|How do numerical models relate to other models?  (Taxonomy)
	10|Match up strong and weak computer students.
	70|Walk students through successively more complicated examples of using NetLogo to build agent-based models.
	10|Assignment (Multiagent homework): Working in pairs, extend the last model we developed in class some way.  Get approval on extension before leaving class.  Add plot to show dynamics.  Email .nlogo file to Rik.  Also, working separately, write up one page: strengths and weaknesses of agent-based modeling.",

	"Animal models (Anne Dalziel)",
	"Prep: bring guest lecture forms to class.
	100|Guest lecture: Anne talking about animal models in physiology.
	10|Collect completed guest lecture forms."
); 

$week[9] = array(
	"Construction",	// section (or blank if same as last)
	"",
	"Project 2: Construction",
	"Prep: Instruct class this week's lecture held in LSK 464 (ISP computer lab).
	100|Work period.  Students can work on projects in computer lab.
	10|Project 2 homework: Complete draft of model (prototypes to be shown this sem).",
	
	"Project 2: Prototype",
	"Prep: Instruct class this week's lecture held in LSK 464 (ISP computer lab).
	Prep: Bring prototype peer evaluations.
	10|Last minute preparation for demonstration of prototype.
	10|Form groups of 4.
	80|4 loops: 
	>10|One group member demos model so far.  Explains goals and what's left to do.
	>10|Feedback from rest of group.
	10|Complete peer evaluations and hand in."
); 

$week[10] = array(
	"",	// section (or blank if same as last)
	"",
	
	"Model Validation",
	"30|Discuss: How do you know when a model is &quot;correct&quot;?
	>Compare different models.
	>Look at limiting cases, when you know what the model should do, then check.
	>Look at limiting cases, when you know the model should be <b>wrong</b>, then check.  (What are model's assumptions?)
	30|Consider reactions (eg. birth, competition, predation) that inspired models we studied in class.
	>What are the limiting cases?
	>What should happen in those cases?
	30|Break into 3 groups: Analytic, Numerical, & Agent-based.
	>Check limiting cases.  When should model be <b>right</b>?  Is it?  
	>When should model be <b>wrong</b>?  Is it?
	20|Discuss results as a class.",
	
	"Project 2: Refinement",
	"Prep: Instruct class this week's seminar held in LSK 464 (ISP computer lab).
	100|Work period.  Students can work on projects in computer lab.
	10|Project 2 homework: Complete model (demonstrations next sem)."
); 

$week[11] = array(
	"",	// section (or blank if same as last)
	"",
	"Holiday (Easter Monday)",
	"",

	"Project 2: Demo I",
	"Prep: Instruct class this week's seminar held in LSK 464 (ISP computer lab).
	Prep: Bring demo grading rubrics.
	10|Sign-ups for demonstrations (10 slots for Jeff & Rik, each).
	100|Demonstrations (10 minutes each)."
); 

$week[12] = array(
	"",	// section (or blank if same as last)
	"",
	"Project 2: Demo II",
	"Prep: Instruct class this week's lecture held in LSK 464 (ISP computer lab).
	Prep: Bring demo grading rubrics.
	10|Sign-ups for demonstrations (10 slots for Jeff & Rik, each).
	100|Demonstrations (10 minutes each).",
	
	"Project 2: Refinement",
	"Prep: Instruct class this week's seminar held in LSK 464 (ISP computer lab).
	100|Work period.  Students can work on projects in computer lab.
	10|Project 2 homework: Complete model (posters next sem)."
); 

$week[13] = array(
	"",	// section (or blank if same as last)
	"",
	"Wrap up",
	"Prep: bring teaching evaluations to class.
	20|ISCI 330 students come to discuss outcomes?
  	20|Complete teaching evaluations.
	20|Review final exam.
  	20|Discuss framework for report.
  	30|Help students with projects.",
	
	"Project 2: Posters",
	"Prep: Bring tape and student+teacher rubrics.
	10|Hang posters around room and distribute student rubrics.
	50|Count off every other presenter.  Have first half walk around room visiting presenters.
	50|Switch.  Collect student rubrics and posters at end."
); 

$weight["Assignment 1: Definition"] = 2; $due["Assignment 1: Definition"] = "Start of class lec02";	// groups
$weight["Assignment 2: Speeds"] = 2;	$due["Assignment 2: Speeds"] = "Start of class lec03";	// pass fail
$weight["Assignment 3: Analytic"] = 3;	$due["Assignment 3: Analytic"] = "Start of class lec06";	// pairs
$weight["Assignment 4: Numeric"] = 3;	$due["Assignment 4: Numeric"] = "Start of class sem06a";	// pairs
$weight["Assignment 5: Multiagent"] = 3; $due["Assignment 5: Multiagent"] = "Start of class sem07a";	// pairs
$weight["Assignment 6: Redux"]= 3;		$due["Assignment 6: Redux"] = "Start of class lec10";	// makeup for one of A3-A5
$weight["Assignment 7: Drop 1"]= -3;	$due["Assignment 7: Drop 1"] = "";	// drop lowest grade of A3-A6
$weight["Assignment 8: Drop 2"]= -3;	$due["Assignment 8: Drop 2"] = "";	// drop 2nd lowest grade of A3-A65

$weight["Project 1: Definition"] = 15;	$due["Project 1: Definition"] = "Start of lecture lec04";
// make stage 2 due earlier (eg. end of Feb)
$weight["Project 1: Deconstruction"]=15;$due["Project 1: Deconstruction"] = "Start of lecture lec08";
$weight["Project 2: Inspiration"] = 2;	$due["Project 2: Inspiration"] = "Start of seminar sem03a";
$weight["Project 2: Literature search"]=4;$due["Project 2: Literature search"] = "Start of seminar sem05a";
$weight["Project 2: Proposal"] = 6;		$due["Project 2: Proposal"] = "Start of seminar sem07a";
$weight["Project 2: Prototype"] = 2;	$due["Project 2: Prototype"] = "Start of seminar sem09a";
$weight["Project 2: Demonstration"] = 2;$due["Project 2: Demonstration"] = "Start of class sem11a / lec12";
$weight["Project 2: Poster"] = 4;		$due["Project 2: Poster"] = "Start of seminar sem13a";
$weight["Project 2: Report"] = 30;		$due["Project 2: Report"] = "proj3due, lec-end at Rik's office, LSK 466";
$weight["Best Project"] = 5;		
$weight["Final Exam"] = 5;				$due["Final Exam"] = "";

$dayofweek['lec'] = strftime('%a', strtotime($datetimes['lec01'] . ', ' . $year));
$dayofweek['sema'] = strftime('%a', strtotime($datetimes['sem01a'] . ', ' . $year));
$dayofweek['semb'] = strftime('%a', strtotime($datetimes['sem01b'] . ', ' . $year));

$room['lec'] = ubcRoom("LSK",462);
$room['sema'] = ubcRoom("LSK",462);
$room['semb'] = ubcRoom("LSK",462);

function prettydatetime($dt, $dateformat='') {
	global $datetimes, $year;
	foreach ($datetimes as $code => $replace) {
		if ($dateformat != '')	$replace = strftime($dateformat, strtotime($replace . ', ' . $year));
		$dt = str_replace($code, $replace, $dt);
	}
	return $dt;
}

function prettydue($task, $dateformat='', $remove='') {
	global $due;
	return str_replace($remove, '', prettydatetime($due[$task],$dateformat));
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
