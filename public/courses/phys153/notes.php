<?
include_once 'shortcut.php';

function notes($options) {
	global $basedir;
	extract($options);	// $week, $title, $tutpdf, $tutpszip, $solnpdf, $solnpszip
	//	<if not basedir><set basedir=""></if>
	if (isset($tutpdf) && $tutpdf=='')		$tutpdf="tut$week.pdf";
	if (isset($tutpszip) && $tutpszip=='')	$tutpszip="tut$week.zip";
	if (isset($solnpdf) && $solnpdf=='')		$solnpdf="soln$week.pdf";
	if (isset($solnpszip) && $solnpszip=='')	$solnpszip="soln$week.zip";
	if (isset($week)) {
		echo "<a name=\"week${week}\">";
		if (isset($title))	$title="Week ${week}: ${title}";
		else				$title="Week ${week}";
	}
	echo '<p>&nbsp;<table width=100% border=3>';
	if (isset($title))	echo "<tr><td align=center colspan=4 bgcolor=F0F8FF><big><b>$title</b></big></td></tr>";
	echo '<tr><td colspan=2 align=center bgcolor=F5F5DC>Tutorial Notes and Assigned Problem</td><td colspan=2 align=center bgcolor=F5F5DC>Solution to Assigned Problem</td></tr><tr><td width=25% align=center>';
	if (isset($tutpdf))		echo shortcut(array('file'=>$tutpdf, 'icon'=>"${basedir}images/pdficon.gif"));
	else					echo '&nbsp;';
	echo '</td><td width=25% align=center>';
	if (isset($tutpszip))	echo shortcut(array('file'=>$tutpszip, 'icon'=>"${basedir}images/pszipicon.gif"));
	else					echo '&nbsp;';
	echo '</td><td width=25% align=center>';
	if (isset($solnpdf))	echo shortcut(array('file'=>$solnpdf, 'icon'=>"${basedir}images/pdficon.gif"));
	else					echo '&nbsp;';
	echo '</td><td width=25% align=center>';
	if (isset($solnpszip))	echo shortcut(array('file'=>$solnpszip, 'icon'=>"${basedir}images/pszipicon.gif"));
	else					echo '&nbsp;';
	echo '</td></tr></table></p>';
}
?>