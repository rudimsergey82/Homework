<?php

echo "Enter the number \n";
$handle = fopen ("php://stdin","r");
$number = fgets($handle);

for($i = 1;$i <= $number; $i ++)
    echo $i.($i<$number ? "," : ".");