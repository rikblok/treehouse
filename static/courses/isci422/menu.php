<?
$menuhomedir="isci422/";
$subdir=pathfromto($menuhomedir,$pathfrombase);
//echo "path from ($menuhomedir) to ($pathfrombase) = ".$subdir;
//if (!isset($subdir))	$subdir='';
$page="${basedir}$menuhomedir$subdir$scriptroot.html";
function menuhead($href,$name) {
	global $scriptroot, $page;
	$name = str_replace(' ', '&nbsp;', $name);
	$bgcolor = 'white';
	if ($href==$page) {
		echo "<table width=\"100%\" bgcolor=\"$bgcolor\" cellspacing=\"0\" cellpadding=\"0\">";
		echo "<tr><td colspan=\"2\"><small>$name</small></td></tr>";
		if (file_exists($scriptroot.'.toc'))	{	
			echo "<tr><td>&nbsp;&nbsp;</td><td>";
			include $scriptroot.'.toc';
			echo '</td></tr>';
		}
		echo '</table>';
	} else {
		if (substr($href, 0, 7)=="http://" || file_exists($href))	echo "<a href=\"$href\">$name</a><br>";
		else												echo "<font color=\"gray\">$name</font><br>";
	}
}
echo "<table width=\"100%\" cellspacing=\"2\" cellpadding=\"8\"><tr>";
echo "<td class=\"noprint\" width=\"10%\" valign=\"top\" bgcolor=\"$tocbgcolor\"><small>";
menuhead("${base}${menuhomedir}index.html","Home");
menuhead("${base}${menuhomedir}past/index.html", "Past Projects");
menuhead("${base}${menuhomedir}software/index.html", "Software");
menuhead("${base}${menuhomedir}grades/i422grades-public.xls", "Grades (XLS)");
menuhead("http://www.zohosheet.com/view.do?url=${baseurl}${menuhomedir}grades/i422grades-public.xls","Grades (web)");
menuhead("${base}${menuhomedir}admin/index.html", "Administration");
if (strstr($subdir,'admin/')) {
	menuhead("${base}${menuhomedir}admin/files", "Files");
}

echo '<h5>Related Links</h5>';
menuhead("http://www.intsci.ubc.ca/community/viewforum.php?f=26","Forum");
menuhead("http://www.intsci.ubc.ca/","Integrated Sciences");
menuhead("http://www.zoology.ubc.ca/~rikblok/calendar/agenda.php?table_width=760&days=56&cal=ISCI-422","Course Calendar");
echo '</small></td><td>';
$tocquiet=true;
include 'toc.php';
// table closed in foot.php
?>
