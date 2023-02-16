

echo "Welcomr to linux thiru!!"
echo -n "Hello world"
echo -e "\nthiru\tkarthi\trathu"

echo " " 
echo "sum of two numbers"
((sum=6+4))
echo "6+4 ="$sum

echo " "
((square=6*6))
echo "6 square : " $square

echo " "
((cube=6*6*6))
echo "6 cube : " $cube

echo " "
count=1
while [ "$count" -lt 5 ]
do
echo $count
((count++))
done

echo " "
echo "Enter number : "
read n
if [ $n -lt 0 ];
then
echo "$n is negative number !"
else
echo "$n is positive number !"
fi

echo " "
echo "**for loop** "
for (( i=0;i<5;i++ ))
do
echo "$i"
done

echo " "
echo "*** user input ***"
echo "Enter your name : "
read name 
echo "name : $name "

echo " "
echo "***validation(logical and)*** "
echo "enter number : "
read n
echo "enter character :"
read c
if [[ $n == 1 && $c == "a" ]];
then
echo "validdd"
else 
echo "Not valid"
fi


echo " "
echo "***validation(logical or)*** "
echo "enter number : "
read n
echo "enter character :"
read c
if [[ $n == 1 || $c == "a" ]];
then
echo "validdd"
else 
echo "Not valid"
fi


echo " "
echo "***grade(case)****"
echo "enter number : "
read n
case $n in
1)
echo "Excellent1";;
2)
echo "very good!";;
3)
echo "good!";;
*)
echo "okeyyyy";;
esac


echo " "
echo "** argument from command line**"
echo "Total argument : $#"
echo "1st argument = $1"
echo "2nd argument = $2"

echo " "
echo "***string***"
string1="Thiru"
string2="murugan"
echo $string1$string2
string1+=" 2021115117"
echo $string1
substr=${string1:6}
echo $substr

echo " "
echo "Enter first number : "
read a
echo "Enter second number : "
read b
((sum=a+b))
echo "sum = $sum"


echo " "
echo "*** functions***"
function area(){
a=$(($1*$2))
echo "area : $a"
}

area 2 4


echo " "
echo " ***make directory***"
echo "Enter directory name :"
read name
if [ -d $name ];
then 
echo "$name exists"
else
mkdir $name
echo "$name created successfullyy!"
fi

echo " "
echo "Read a file"
echo "file"
file='new,txt'
while read line;do
echo $line
done < $file


echo " " 
echo "delete file"
read fn
rm $fn

echo " "
echo "Mail"
recipient="thiru123@gmail.com"
subject="Greetings"
message="Welcome to linux"
mail -s $subject $recipient <<< $message

echo " "
echo "wait command"
process id=$!
wait sprocess id
echo "Exited with status $?"



echo " "
echo " sleep"
echo "wait for 1 minute"
sleep 1
echo "completed"

