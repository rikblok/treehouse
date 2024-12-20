<?
$menuhomedir="phys102/";
$subdir=pathfromto($menuhomedir,$pathfrombase);
//echo "path from ($menuhomedir) to ($pathfrombase) = ".$subdir;
//if (!isset($subdir))	$subdir='';
$page="${basedir}phys102/$subdir$scriptroot.html";
function menuhead($href,$name) {
	global $scriptroot, $page;
	if ($href==$page) {
		echo "<b><font color=\"#3333ff\">$name</font></b><br><table cellspacing=\"0\" cellpadding=\"0\"><tr><td>&nbsp;&nbsp;</td><td bgcolor=\"#3333ff\"><small><small>&nbsp;</small></small></td><td>&nbsp;&nbsp;</td><td>";
		if (file_exists($scriptroot.'.toc'))	{	include $scriptroot.'.toc';	}
		echo '</td></tr></table>';
	} else {
		echo "<a href=\"$href\">$name</a><br>";
	}
}

echo "<table width=\"100%\" cellspacing=\"2\" cellpadding=\"8\"><tr><td valign=\"top\" bgcolor=\"$tocbgcolor\">";
menuhead("${base}phys102/index.html","Home");
menuhead("${base}phys102/lecture/index.html", "Lectures");
menuhead("${base}phys102/tutorial/index.html", "Tutorials");
menuhead("${base}phys102/prs/index.html", "Personal&nbsp;Response&nbsp;System");
menuhead("${base}phys102/lab/index.html", "Laboratory");
menuhead("${base}phys102/people/index.html", "People");
menuhead("${base}phys102/practice/index.html", "Practice&nbsp;Problems");
menuhead("${base}phys102/tests/index.html", "Tests");
menuhead("${base}phys102/exam/index.html", "Final&nbsp;Exam");
menuhead("${base}phys102/formula/index.html", "Formula Sheet");
menuhead("${base}phys102/grades/index.html", "Grades");
if ($subdir=="admin-pnm13b/") {
	menuhead("${base}phys102/admin-pnm13b/index.html", "Administration");
	menuhead("${base}phys102/admin-pnm13b/tutsols.html", "Tutorial&nbsp;Solutions");
}
echo '</td><td>';
$tocquiet=true;
include 'toc.php';
// table closed in foot.php
?>
