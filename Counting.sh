echo "Hello what is your name?"
read myName

nameVal=True

while $nameVal; do

if [[ $myName =~ ^[A-Za-z_]+$ ]]; then
        # it matches
        echo "Hi, $myName"
        nameVal=false
else
        # doesn't match
        echo "Name is not Alphabetical"
        echo "What is your name?"
        read myName
fi

done

echo "Please enter a number between 5-100."
read myNum

while [[ $myNum =~ [^0-9] ]];

        do
        echo "Not a number"
        echo "Please enter number: "
        read myNum
done

while [[ $myNum -lt 5 ]];
        do
        echo "Must be greater than 5!"
        read myNum
done

while [[ $myNum -gt 100 ]];
        do
        echo "Number must be between 5 and 100"
        read myNum
done

counter=0

if ! [[ $((myNum % 2)) == 0 ]];
        then
        counter=1
else
        counter=0
fi

while [[ $counter -le $myNum ]];
        do
        echo $counter
        let counter=$counter+2;
        sleep 0.5
done