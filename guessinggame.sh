#program to guess the number of file in current working directory



#function to seek
function guessinggame
{
   #taking the input from the user
   echo "Guess how many files are there in current working directory:"
   read guess
   #calculating the number of files(for me no_of_files=41)
   no_of_files=$(ls | wc -l)
} 

guessinggame 
#while loop to check whether the guess is equal total or not. 
while [[ $guess -ne $no_of_files ]]
do
   #if condition to check guessed value is too high(here too high means if the guess value is greater than no_of_file+5. note difference can be any value(here i have taken 5) )
   if [[ $guess -gt `expr $no_of_files + 5` ]]
   then
     echo "Guess is too high! Try again.."
   #elif condition to check guessed value is too low(no_of_files-5)
   elif [[ $guess -le `expr $no_of_files - 5` ]]
   then
     echo "Guess is too far ! Try again.."
   #else the guess is near the real value
   else
      echo "Guess is close to the real value! Try again.."
   fi
   guessinggame  
done

echo "Congratulations!!!You have guessed the right value.The number of files are $total"

