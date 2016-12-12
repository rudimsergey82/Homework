<?php

echo "Enter the number of \"Fizz\"\n";
$handle = fopen ("php://stdin","r");
$fizz = fgets($handle);
echo "Enter the number of \"Buzz\"\n";
$handle = fopen ("php://stdin","r");
$buzz = fgets($handle);
echo "Enter the number of \"Third\"\n";
$handle = fopen ("php://stdin","r");
$th = fgets($handle);

for($num = 1;$num <= $th; $num ++){
 if ($num % $fizz == 0 && $num % $buzz == 0) {
        echo "FB".($num<$th ? "," : ".");
 } elseif ($num % $fizz == 0) {
        echo "F".($num<$th ? "," : ".");
   } elseif ($num % $buzz == 0) {
       echo "B".($num<$th ? "," : ".");
    } else {
     echo $num.($num<$th ? "," : ".");
 }
}