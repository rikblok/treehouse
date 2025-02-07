<?php
require_once realpath(dirname(__FILE__).'/data.php');
$lossPerYear=1.0-exp(-8.317766/$dtAvg);	// percent value lost per year
echo round(12.0/$lossPerYear,0);
?>
