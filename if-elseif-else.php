<?php

echo "Enter the first number\n";
$handle = fopen ("php://stdin","r");
$first_number = fgets($handle);

echo "Enter the second number\n";
$handle = fopen ("php://stdin","r");
$second_number = fgets($handle);



if ($first_number > $second_number) {
    echo "The first number is greater than second";
} elseif ($first_number == $second_number) {
    echo "The first number is equal to the second";
} else {
    echo "The first number is less than the second";
}


