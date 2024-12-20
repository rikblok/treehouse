<?
include 'ubc.php';
include 'url.php';

$year = 2009;
$datetimes = array(
	'first-class' => 'Sep 9',	'last-class' => 'Dec 4',
							'sem00a' => 'Sep 9',	'sem00b' => 'Sep 11',  
	'lec01' => 'Sep 14',	'sem01a' => 'Sep 16',	'sem01b' => 'Sep 18',
	'lec02' => 'Sep 21',	'sem02a' => 'Sep 23',	'sem02b' => 'Sep 25',
	'lec03' => 'Sep 28',	'sem03a' => 'Sep 30',	'sem03b' => 'Oct 2',
	'lec04' => 'Oct 5',		'sem04a' => 'Oct 7',		'sem04b' => 'Oct 9',  
	'lec05' => 'Oct 12',	'sem05a' => 'Oct 14',	'sem05b' => 'Oct 16', 
	'lec06' => 'Oct 19', 	'sem06a' => 'Oct 21',   	'sem06b' => 'Oct 23',
	'lec07' => 'Oct 26',	'sem07a' => 'Oct 28',	'sem07b' => 'Oct 30',  
	'lec08' => 'Nov 2',		'sem08a' => 'Nov 4',		'sem08b' => 'Nov 6', 
	'lec09' => 'Nov 9', 	'sem09a' => 'Nov 11',   	'sem09b' => 'Nov 13',
	'lec10' => 'Nov 16',	'sem10a' => 'Nov 18',	'sem10b' => 'Nov 20',
	'lec11' => 'Nov 23',	'sem11a' => 'Nov 25',	'sem11b' => 'Nov 27',
	'lec12' => 'Nov 30',	'sem12a' => 'Dec 2',		'sem12b' => 'Dec 4',
//	'lec13' => 'Apr 6',		'sem13a' => 'Apr 8',		'sem13b' => 'Apr 8',
	'proj3due' => 'Dec 7',
	'lec-start' => '2pm',	'sema-start' => '2pm',	'semb-start' => '2pm',
	'lec-end' => '4pm',		'sema-end' => '4pm',	'semb-end' => '4pm',
);

//$weight["Assignment 1: Math vs Science"]=2;					$due["Assignment 1: Math vs Science"]="Start of class sem01a";	// groups
//$weight["Assignment 2: Leg length vs speed"]=2;						$due["Assignment 2: Leg length vs speed"]="Start of class sem02a";
//$weight["Assignment 2: Speeds"]=2;						$due["Assignment 2: Speeds"]="Start of class lec03";	// pass fail
//$weight["Assignment 3: Analytic or Numeric"]=7;	$due["Assignment 3: Analytic or Numeric"]="Start of class lec06";	// pairs
//$weight["Assignment 4: Multiagent"]=7;				$due["Assignment 4: Multiagent"]="Start of class sem06a";	// pairs

// note: all Project 1 deadlines should be in lectures (not seminars) so that all group members are present
$weight["Project 1: Article Selection"] = 0;	$due["Project 1: Article Selection"] = "Start of class sem02a";
$weight["Project 1: Grouping"] = 0;			$due["Project 1: Grouping"] = "Start of class sem03a";
$weight["Project 1: Definition"] = 10; 		$due["Project 1: Definition"] = "Start of class sem04a";
$weight["Project 1: Deconstruction"]=15;	$due["Project 1: Deconstruction"] = "Start of class sem06a";
$weight["Project 2: Inspiration"] = 2; 		$due["Project 2: Inspiration"] = "Start of class sem03a";
$weight["Project 2: Feedback"]=3;				$due["Project 2: Feedback"] = "Start of class sem05a";
$weight["Project 2: Reply to Feedback"]=2;$due["Project 2: Reply to Feedback"] = "Start of class sem07a";
//$weight["Project 2: Proposal"] = 6;	    	$due["Project 2: Proposal"] = "Start of seminar sem07a";
$weight["Project 2: Prototype"] = 2;   	$due["Project 2: Prototype"] = "Start of class lec09";
$weight["Project 2: Demonstration"] = 3;	$due["Project 2: Demonstration"] = "Start of class lec11";
$weight["Project 2: Poster"] = 3;    		$due["Project 2: Poster"] = "Start of class sem12a";
$weight["Project 2: Report"] = 30; 			$due["Project 2: Report"] = "proj3due, lec-end at Rik's office, LSK 466";
$weight["Best Project"] = 5;		
$weight["Final Exam"] = 25;    				$due["Final Exam"] = "";

$dayofweek['lec'] = strftime('%a', strtotime($datetimes['lec01'] . ', ' . $year));
$dayofweek['sema'] = strftime('%a', strtotime($datetimes['sem01a'] . ', ' . $year));
$dayofweek['semb'] = strftime('%a', strtotime($datetimes['sem01b'] . ', ' . $year));

$room['lec'] = ubcRoom("LSK",464);
$room['sema'] = ubcRoom("LSK",464);
$room['semb'] = ubcRoom("LSK",464);

// lessons - to be organized into weeks
//---------------------------------------------------------------------
$lesson['Science in context'] = 
	"Prep: Print out course syllabus.
	Prep: find a topic of debate with supporting papers for each side and make copies for every student.  One position should be unscientific. See " . url(array('link'=>'http://www.actionbioscience.org/evolution/nhmag.html')) . " for example.
	30|Distribute and discuss syllabus.
	30|Discuss the scientific method.
	45|Expand discussion to definition of science.  What is not science?  (Other 'ways of knowing'.)
	5|Homework: Read debate papers before next class.  Focus: Which arguments are scientific and which aren't?  Why?";
//---------------------------------------------------------------------
$lesson['What is science?'] = 
	"Prep: Print and bring Assignment 1 instructions (1 per group).
	10|Assign groups for class discussion & Assignment 1.
	30|Groups: discuss scientific merits of arguments & definition of science.
	30|Class: discuss same.
	30|Discuss logic of science. Transposition: (If Theory then Evidence supports) == (If not Evidence supports then not Theory).  Goal is to have students discover the concept of falsifiability.
	10|Homework: Assign groups for Assignment 1 (how would you test evolution vs. ID?).";
//---------------------------------------------------------------------
$lesson['Definition of science'] =	
	"Prep: Print and bring handouts for Project 1.
	Prep: Bring signup sheet for Assignment 2.
	30|Have groups construct definitions of science on board.
	30|Discuss definitions of science.  What's common?  What's different?  What's missing?  What's superfluous?
	30|Contrast theories that are scientific but have been proven false versus unscientific theories.  Eg. plum-pudding model of atom versus &quot;Rik's(?) pet monster&quot;.  A theory that's wrong may still be scientific.
	10|Assignment 2: distribute signup sheet.  Students must bring typical walk & run speeds for their animal next lecture.
	10|Project 1: Distribute handouts and explain.";
//---------------------------------------------------------------------
$lesson['Project 2: Brainstorming'] = 
	"Prep: make handouts for Project 2.
	15|Project 2: Distribute handouts and explain.
	5|Form groups of 3.  Explain plan: to brainstorm a research question.
	30|Storm: Each member takes 10 minutes to come up with as many ideas for investigation as possible.  No criticism or justification.  Just a long list (at least 10).
	10|Reflection: Individually review possibilities, eliminate all but three favourites.
	30|Discussion: New groups of 3.  Each member explores favourite ideas and gets suggestions from others.  Are they scientific?
	20|Wrap up?";
//---------------------------------------------------------------------
$lesson['Our first model'] = 
	"Prep: bring projector & laptop w/ spreadsheet for Assignment 2.
	Prep: Print Haldane's 'On Being the Right Size' for every student.
	50|Develop model of walking.  Invoke theories of evolution (energy minimization) & Newton's laws (pendulum period).
	30|Fill in spreadsheet from data provided by students (give students credit for Assignment 2).
	20|Discuss chipmunk model.  How good was it?  How could it be improved?  What else could account for relationship?
	10|Assignment 3: Nitpick a movie using allometric scaling arguments.";
//---------------------------------------------------------------------
$lesson['Models in science'] =	
	"50|Discuss models in general.  What are they for?  How do they relate to theory and experiments?
	30|Discuss stepping-stone model of scientific models. Theory <--> Model <--> Experiment, related through hypotheses and tests.
	30|Groups: Come up with concrete examples of these elements.";	
//---------------------------------------------------------------------
$lesson['Model evaluation'] =	
	"30|Discuss how to determine the quality of a model (hint: understanding/predictions, simplicity).
	30|Groups (from Project 1): Come up with a valuation system/currency for models. Eg. How many evolutions is relativity worth? Rate your models on this scale.
	20|Presentations of valuation systems.";
//---------------------------------------------------------------------
$lesson['Model definition'] =
	"20|Explain Project 1 Stage 2.
	10|Project 1 groups all write their definition of scientific model on the blackboard.
	10|Each group reads out their definition.
	30|Discuss definition of scientific model.  What are minimal/essential ingredients?
	20|Each group discusses and revises their definition on the board.
	20|Each group appends a hand-written definition and justification (one page) to their definition report before submitting it.  New definition and rationale will be evaluated as part of report.";
//---------------------------------------------------------------------
$lesson['Taxonomy of models'] =
	"20|Discuss: how should we classify models?  By what criterion?  Why?  How does classification aid us?  (Hint: don't segregate by disciplines.)
	30|Form groups.  Come up with a taxonomy of models.
	30|Discuss: which group has the most useful taxonomy?  Why?  (Vote: Points for best?)
	10|Explain Project 2 lit search assignment.  Due next seminar.";
//---------------------------------------------------------------------
$lesson['Analytic modeling I'] =
	"10|How do analytic models (specifically: Reaction Kinetics) relate to other models?  (Taxonomy: Quantitative -> Mathematical -> Analytic)
	10|Match up strong and weak math students.
	20|Review reaction kinetics (eg. A + 2B --> 3B + 4C).
	20|Analytical methods: nullclines & flows.
	40|Go through as many examples as possible: Birth, Death, Birth+Death, Competition, Predation.
	10|Assignment (Analytic homework): As partners, extend the last model in some way. Get instructor approval before the end of class.  Solve for nullclines and draw flows.  Discuss the strengths and weaknesses of analytical modeling.  Due next lecture.  Partners may work together but must submit their own work.";
//---------------------------------------------------------------------
$lesson['Numeric modeling I'] =
	"Prep: Ask students to bring laptops and install NetLogo.
	10|How do numeric models relate to other models?  (Taxonomy: Quantitative -> Mathematical/Computational -> Numeric)
	10|Match up strong and weak computer students (or use same pairs as analytic).
	20|Introduce numeric approximation of derivative.  Discuss Mean Value Theorem from Calculus <http://en.wikipedia.org/wiki/Mean_value_theorem>.
	60|Use NetLogo to lead class through same examples of numeric modeling as were developed for analytic modeling.  Use Reaction Kinetics to compute flows from each reaction and add to system dynamics one at a time.
	10|Assignment (Numeric homework): As partners, extend the last model in some way.  Get instructor approval before the end of class.  Numerically compute the population dynamics and draw graph.  Discuss relative advantages of numeric and analytic modeling.  Due next seminar.  Partners may work together but must submit their own work.";
//---------------------------------------------------------------------
$lesson['Multi-agent simulation'] =
	"Prep: Ask students to bring laptops and install NetLogo.
	10|Discuss proposal.
	10|Explain analytic vs. numeric models: <table border=\"1\" align=\"center\"><tr><td></td><td>General</td><td>Specific</td></tr><tr><td>Exact</td><td>Analytic<br>(as covered in class)</td><td>Q: ?<br><i>(A: Analytic)</i></td></tr><tr><td>Approximate</td><td>Q: ?<br><i>(A: Numeric)</i></td><td>Numeric<br>(as covered in class)</td></tr></table>
	10|How do multi-agent models relate to other models?  (Taxonomy: Quantitative -> Computational -> Agent-based)
	10|Match up strong and weak computer students.
	60|Walk students through successively more complicated examples of using NetLogo to build agent-based models.
	10|Assignment (Multiagent homework): Working in pairs, extend the last model we developed in class some way.  Get approval on extension before leaving class.  Add plot to show dynamics.  Email .nlogo file to Rik.  Also, working separately, write up one page: strengths and weaknesses of agent-based modeling.";
//---------------------------------------------------------------------
$lesson['Multi-agent simulation II'] =
	"Prep: Ask students to bring laptops and install NetLogo.
	10|Discuss proposal.
	10|How do multi-agent models relate to other models?  (Taxonomy: Quantitative -> Computational -> Agent-based)
	10|Match up strong and weak computer students.
	70|Walk students through successively more complicated examples of using NetLogo to build agent-based models.
	10|Assignment (Multiagent homework): Working in pairs, extend the last model we developed in class some way.  Get approval on extension before leaving class.  Add plot to show dynamics.  Email .nlogo file to Rik.  Also, working separately, write up one page: strengths and weaknesses of agent-based modeling.";
//---------------------------------------------------------------------
$lesson['Analytic modeling II'] =
	"10|How do analytic models (specifically: Reaction Kinetics) relate to other models?  (Taxonomy)
	10|Match up strong and weak math students.
	20|Review reaction kinetics (eg. A + 2B --> 3B + 4C).
	20|Analytical methods: nullclines & flows.
	40|Go through as many examples as possible: Birth, Death, Birth+Death, Competition, Predation.
	10|Assignment (Analytic homework): As partners, extend the last model in some way. Get instructor approval before the end of class.  Solve for nullclines and draw flows.  Discuss the strengths and weaknesses of analytical modeling.  Due next lecture.  Partners may work together but must submit their own work.";
//---------------------------------------------------------------------
$lesson['Animal models'] =
	"Prep: bring guest lecture forms to class.
	100|Guest lecture: Anne talking about animal models in physiology.
	10|Collect completed guest lecture forms.";
//---------------------------------------------------------------------
$lesson['Project 2: Construction'] =
	"Prep: Instruct class this week's lecture held in LSK 464 (ISP computer lab).
	100|Work period.  Students can work on projects in computer lab.
	10|Project 2 homework: Complete draft of model (prototypes to be shown this sem).";
//---------------------------------------------------------------------
$lesson['Project 2: Prototype'] =
	"Prep: Instruct class this week's lecture held in LSK 464 (ISP computer lab).
	Prep: Bring prototype peer evaluations.
	10|Last minute preparation for demonstration of prototype.
	10|Form groups of 4.
	80|4 loops: 
	>10|One group member demos model so far.  Explains goals and what's left to do.
	>10|Feedback from rest of group.
	10|Complete peer evaluations and hand in.";
//---------------------------------------------------------------------
$lesson['Verify & validate!'] =
	"20|Discuss: How do you know when a model is &quot;good&quot;?  (And why should we care?)
	>2 parts to the problem: verification & validation:
	>Verify: Show model \"works\" the way you meant it to.
	>Validate: Show model makes reliable predictions (within expected limits).
	20|Break into 3 groups: Analytic, Numeric, & Agent-based.  Describe side-blotched lizards.
	20|Each group verifies their model.
	20|Each group validates their model against each other (in the absence of real data).
	20|Discuss results as a class.  How valid are these models?  What empirical data do you need to further validate your model?
	10|Assignment: Verify your Project 2 model.  Bonus: Validate your Project 2 model.  Due with Demo.";
//---------------------------------------------------------------------
$lesson['Project 2: Refinement'] =
	"Prep: Instruct class this week's seminar held in LSK 464 (ISP computer lab).
	100|Work period.  Students can work on projects in computer lab.
	10|Project 2 homework: Complete model (demonstrations next sem).";
//---------------------------------------------------------------------
$lesson['Project 2: Demo'] =
	"Prep: Instruct class this week's seminar held in LSK 464 (ISP computer lab).
	Prep: Bring demo grading rubrics.
	10|Sign-ups for demonstrations (10 slots for Jeff & Rik, each).
	100|Demonstrations (10 minutes each).";
//---------------------------------------------------------------------
$lesson['Wrap up'] =
	"Prep: bring teaching evaluations to class.
	20|ISCI 330 students come to discuss outcomes?
  	20|Complete teaching evaluations.
	20|Review final exam.
  	20|Discuss framework for report.
  	20|Help students with projects.
	10|Assignment: \"You've put a lot of work into these models and they are all original work so you should have an opportunity to show them off. As a final assignment (worth 2 marks) you are encouraged to invite experts in the field of your research question to the poster session. I will reward 100% for faculty (prof/instructor) that you introduce me to at the session, 75% per post-doc, or 50% per grad student (max 100%).\"";
//---------------------------------------------------------------------
$lesson['Project 2: Posters'] =
	"Prep: Bring tape and student+teacher rubrics.
	10|Hang posters around room and distribute student rubrics.
	50|Count off every other presenter.  Have first half walk around room visiting presenters.
	50|Switch.  Collect student rubrics and posters at end.";
//---------------------------------------------------------------------
$week[0] = array(
	"Definition",	// section (or blank if same as last)
	"",
	"", "",
	"Science in context", ""
); 
$week[1] = array(
	"",	// section (or blank if same as last)
	"",
	"What is science?", "",
	"Definition of science", ""
); 
$week[2] = array(
	"",	// section (or blank if same as last)
	"",
	"Project 2: Brainstorming", "",
	"Our first model", ""
); 
$week[3] = array(
	"",	// section (or blank if same as last)
	"",
	"Models in science", "",
	"Taxonomy of models", ""
); 
$week[4] = array(
	"Deconstruction",	// section (or blank if same as last)
	"",
	"Analytic modeling I", "",
	"Model definition", ""
); 
$week[5] = array(
	"",	// section (or blank if same as last)
	"",
	"Thanksgiving Day (no class)", "",	
	"Numeric modeling I", ""
); 
$week[6] = array(
	"",	// section (or blank if same as last)
	"",
	"Multi-agent simulation", "",
	"Animal models", ""
); 
$week[7] = array(
	"",	// section (or blank if same as last)
	"",
	"Analytic modeling II", "",	
	"Numeric modeling II", ""
); 
$week[8] = array(
	"Construction",	// section (or blank if same as last)
	"",
	"Project 2: Construction", "",
	"Project 2: Construction", ""
); 
$week[9] = array(
	"",	// section (or blank if same as last)
	"",
	"Project 2: Prototype", "",
	"Remembrance Day (no class)", ""
); 
$week[10] = array(
	"",	// section (or blank if same as last)
	"",
	"Verify & validate!", "",	
	"Project 2: Refinement", ""
); 
$week[11] = array(
	"",	// section (or blank if same as last)
	"",
	"Project 2: Demo", "",	
	"Project 2: Refinement", ""
); 
$week[12] = array(
	"",	// section (or blank if same as last)
	"",
	"Wrap up", "",
	"Project 2: Posters", ""
); 

// fill weeks with lessons
foreach ($week as $i => $w) {
	if (empty($w[3]) && isset($lesson[$w[2]])) {	// fill empty lectures
		$week[$i][3]=$lesson[$w[2]]; 
	}
	if (empty($w[5]) && isset($lesson[$w[4]])) {	// fill empty seminars
		$week[$i][5]=$lesson[$w[4]]; 
	}
}

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
// reports section of course ('Definition', 'Deconstruction', or'Construction')
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
