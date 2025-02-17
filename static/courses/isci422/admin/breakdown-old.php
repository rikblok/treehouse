<?
include 'ubc.php';
include 'url.php';

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
	"Analytical modeling",
	"10|How do analytic models (specifically: Reaction Kinetics) relate to other models?  (Taxonomy)
	10|Match up strong and weak math students.
	20|Review reaction kinetics (eg. A + 2B --> 3B + 4C).
	20|Analytical methods: nullclines & flows.
	40|Go through as many examples as possible: Birth, Death, Birth+Death, Competition, Predation.
	10|Assignment (Analytic homework): As partners, extend the last model in some way. Get instructor approval before the end of class.  Solve for nullclines and draw flows.  Discuss the strengths and weaknesses of analytical modeling.  Due next lecture.  Partners may work together but must submit their own work.",
	
	"Numerical modeling",
	"Prep: Instruct class this week's seminar held in LSK 303E (ISP computer lab).
	10|How do numerical models relate to other models?  (Taxonomy)
	10|Match up strong and weak computer students.
	80|Jeff leads class through examples of numerical modeling
	10|Assignment (Numerical homework): As partners, extend the last model in some way.  Get instructor approval before the end of class.  Numerically compute the population dynamics and draw graph.  Discuss the strengths and weaknesses of numerical modeling.  Due next seminar.  Partners may work together but must submit their own work."
); 

$week[6] = array(
	"",	// section (or blank if same as last)
	"",
	"Numerical & physical modeling (Douw Steyn)",
	"Prep: bring guest lecture forms to class.
	100|Guest lecture: Douw talking about analytic, numerical, and scale modeling in atmospheric science.
	10|Collect completed guest lecture forms.",
	
	"Multi-agent simulation",
	"Prep: Instruct class this week's seminar held in LSK 303E (ISP computer lab).
	10|Hand back Project 2 lit search.  Discuss proposal.
	10|How do numerical models relate to other models?  (Taxonomy)
	10|Match up strong and weak computer students.
	70|Walk students through successively more complicated examples of using NetLogo to build agent-based models.
	10|Assignment (Multiagent homework): Working in pairs, extend the last model we developed in class some way.  Get approval on extension before leaving class.  Add plot to show dynamics.  Email .nlogo file to Rik.  Also, working separately, write up one page: strengths and weaknesses of agent-based modeling."
); 

$week[7] = array(
	"",	// section (or blank if same as last)
	"",
	"Physical modeling (Gordon Bates)",
	"Prep: bring guest lecture forms to class.
	100|Guest lecture: Gordon talking about scale models in chemistry.
	10|Collect completed guest lecture forms.",
	
	"(Pseudo-)Physical modeling",
	"Prep: Instruct class this week's seminar held in LSK 303E (ISP computer lab).
	10|How does Working Model relate to other models?  (Taxonomy)  (Numerical model of Physical model of phenomenon.)
	10|Match up strong and weak computer students.
	80|Walk students through successively more complicated examples of using Working Model to build pseudo-physical models.
	10|Assignment (Physical homework): Working in pairs, extend the last model we developed in class some way.  Get approval on extension before leaving class.  Email .wm2d file to Rik.  Also, working separately, write up one page: strengths and weaknesses of physical modeling (focus on physical model, we've already covered numerical aspects)."
); 

$week[8] = array(
	"",	// section (or blank if same as last)
	"",
	"Animal models (Anne Dalziel)",
	"Prep: bring guest lecture forms to class.
	100|Guest lecture: Anne talking about animal models in physiology.
	10|Collect completed guest lecture forms.",
	
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
	20|Discuss results as a class.
	"	
); 

$week[9] = array(
	"Construction",	// section (or blank if same as last)
	"",
	"Project 2: Construction",
	"Prep: Instruct class this week's lecture held in LSK 303E (ISP computer lab).
	100|Work period.  Students can work on projects in computer lab.
	10|Project 2 homework: Complete draft of model (prototypes to be shown this sem).",
	
	"Project 2: Prototype",
	"Prep: Instruct class this week's lecture held in LSK 303E (ISP computer lab).
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
	"Model evaluation",
	"30|Discussion: What qualities determine the quality of a model? (Eg. simplicity, predictive power, assumptions.)
	20|Discuss trade-offs.  To improve one quality you often have to compromise on another.  Represent with contours on 2D graph.
	30|Divide into groups.  Groups explore trade-offs between a few qualities of choice, and generate 2-3 graphs.
	10|Groups explore models they've seen in their studies.  Indicate where they sit on these trade-off curves relative to others.
	20|Groups present their results.",
	
	"Work session/Holiday (Good Friday)",
	"110|Work period.  Students can work on projects in computer lab."
); 

$week[11] = array(
	"",	// section (or blank if same as last)
	"",
	"Holiday (Easter Monday)",
	"",

	"Project 2: Refinement",
	"Prep: Instruct class this week's seminar held in LSK 303E (ISP computer lab).
	100|Work period.  Students can work on projects in computer lab.
	10|Project 2 homework: Complete model (demonstrations next sem)."
); 

$week[12] = array(
	"",	// section (or blank if same as last)
	"",
	"Games",
	"Prep: Instruct class this week's seminar held in LSK 3?? (non-ISP computer lab--still need to arrange!).
	10|Get students to create accounts on game theory server.
	10|Get students from ISCI 330 to explain rules.
	70|Play games.
	20|Wrap up.  ISCI 330 students explain the point of these experiment.",
	
	"Project 2: Demo",
	"Prep: Instruct class this week's seminar held in LSK 303E (ISP computer lab).
	Prep: Bring demo grading rubrics.
	10|Sign-ups for demonstrations (10 slots for Jeff & Rik, each).
	100|Demonstrations (10 minutes each)."
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

$weight["Assignment 1"] = 1;	$due["Assignment 1: Definition"] = "lec02, lec-start";	// groups
$weight["Assignment 2"] = 1;	$due["Assignment 2: Speeds"] = "lec03, lec-start";	// pass fail
$weight["Assignment 3"] = 1;	$due["Assignment 3: Taxonomy"] = "sem04a, sema-end / sem04b, semb-end";	// pass/fail
$weight["Assignment 4"] = 1;	$due["Assignment 4: Guest"] = "lec06, lec-end";	// Douw
$weight["Assignment 5"] = 1;	$due["Assignment 5: Guest"] = "lec07, lec-end";	// Gordon
$weight["Assignment 6"]= 1;	$due["Assignment 6: Guest"] = "lec08, lec-end";	// Anne
$weight["Assignment 7"] = 2;	$due["Assignment 7: Analytic"] = "lec06, lec-start";	// pairs
$weight["Assignment 8"] = 2;	$due["Assignment 8: Numeric"] = "sem06a, sema-start / sem06b, semb-start";	// pairs
$weight["Assignment 9"] = 2;	$due["Assignment 9: Multiagent"] = "sem07a, sema-start / sem07b, semb-start";	// pairs
$weight["Assignment 10"]= 2;	$due["Assignment 10: Physical"] = "sem08a, sema-start / sem08b, semb-start";	// pairs
$weight["Assignment 11"]= -2;	$due["Assignment 11: Drop 1"] = "";
$weight["Assignment 12"]= -2;	$due["Assignment 12: Drop 2"] = "";

$weight["Project 1: Definition"] = 15;	$due["Project 1: Definition"] = "Start of lecture lec04, lec-start";
// make stage 2 due earlier (eg. end of Feb)
$weight["Project 1: Deconstruction"]=15;$due["Project 1: Deconstruction"] = "Start of lecture lec08, lec-start";
$weight["Project 2: Inspiration"] = 2;	$due["Project 2: Inspiration"] = "Start of seminar sem03a, sema-start / sem03b, semb-start";
$weight["Project 2: Literature search"]=4;$due["Project 2: Literature search"] = "Start of seminar sem05a, sema-start / sem05b, semb-start";
$weight["Project 2: Proposal"] = 6;		$due["Project 2: Proposal"] = "Start of seminar sem07a, sema-start / sem07b, semb-start";
$weight["Project 2: Prototype"] = 2;	$due["Project 2: Prototype"] = "Start of seminar sem09a, sema-start / sem09b, semb-start";
$weight["Project 2: Demonstration"] = 2;$due["Project 2: Demonstration"] = "Start of seminar sem11a, sema-start / sem11b, semb-start";
$weight["Project 2: Poster"] = 4;		$due["Project 2: Poster"] = "Start of seminar sem13a, sema-start";
$weight["Project 2: Report"] = 30;		$due["Project 2: Report"] = "proj3due, lec-end at Rik's office, LSK 303B";
$weight["Best Project"] = 5;		
$weight["Final Exam"] = 5;				$due["Final Exam"] = "";

$year = 2006;
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
