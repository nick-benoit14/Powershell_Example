  # Sample Powershell script to count number of vowels in text file. For this example
  # We will iterate through every character in the novel Frankenstein by Mary Shelley,
  # keep totals of each vowel count, and then print a report back to the terminal.


$global:a = 0;
$global:e = 0;
$global:i = 0;
$global:o = 0;
$global:u = 0;


Function analyzeString($a)
  {
    for ($i=0; $i -le $a.length; $i++)
      {

        if($a[$i] -eq "a"){$global:a++;}
        ElseIf($a[$i] -eq "e"){$global:e++;}
        ElseIf($a[$i] -eq "i"){$global:i++;}
        ElseIf($a[$i] -eq "o"){$global:o++;}
        ElseIf($a[$i] -eq "u"){$global:u++;}

        ElseIf($a[$i] -eq "A"){$global:a++;}
        ElseIf($a[$i] -eq "E"){$global:e++;}
        ElseIf($a[$i] -eq "I"){$global:i++;}
        ElseIf($a[$i] -eq "O"){$global:o++;}
        ElseIf($a[$i] -eq "U"){$global:u++;}


      }
  }


  write-host "Running Vowel Analysis...";
  $text = ".\frank11a.txt"
  $s = get-content $text;
  #write-host $s.length;

  for($j = 0; $j -le $s.length; $j++){

        if($j % 500 -eq 0){write-host ".";}
        analyzeString($s[$j]);

  }



  write-host "A:"$a;
  write-host "E:"$e;
  write-host "I:"$i;
  write-host "O:"$o;
  write-host "U:"$u;
