# Grant Dye 

###1. Number of Subjects
##B.  8 = 17 22 = 5
##C
# Open the file
f = open("Gesquiere2011_data.csv", "r")

# Skip the header
next(f)

# By changing the value of "individuals" it will give you the number of times a subject was tested 
# Creating the ID of what we want to count 
individual = "22"

# Create a counter that adds 1 when individual = "subject picked"
count = 0

# Count how many times the individual appears
for line in f:
    columns = line.strip().split("\t")
    #if individual = "subjeced picked" count adds 1 
    if columns[0] == individual:
        count += 1

#close document
f.close()

#prints answer
print(count)

#8 = 17. 22 = 5 

##D

# Open the file
f = open("Gesquiere2011_data.csv", "r")

# Skip the header
next(f)

# Create a dictionary to store counts
count = {}

# Count how many times the individual appears
for line in f:
    #takes the first column and sepparates it 
    columns = line.strip().split("\t")
    #sets individual value to 0
    individual = columns[0]
    #creates a loop that if the indivividual ID is counted more than once it adds 1 to the count 
    if individual in count:
        count[individual] += 1
    #if and ID isnt counted anymore it sets the count back to 1 and adds the data to the open dictionary 
    else:
        count[individual] = 1

#closes file
f.close()

#prints answer
print(count)

#creates a file 
output = open("Num_samples.csv", "w")
#opens a loop that writes in the file, takes the individual ID and counted number and puts it in separate columns 
for individual in count:
    output.write(individual + "\t" + str(count[individual]) + "\n")
#closes file
output.close()


###2.Mining The Origin of Species 

#B sterility = 97.  isolation = 12
#using grep to count the word
grep -oi "sterility" origin.txt | wc -l
grep -oi "isolation" origin.txt | wc -l

#C 
#using grep "-C 3" to take every line before and after the word then saving it into a file
grep -i -C 3 "sterility" the_origin.txt > sterilty_count.txt
grep -i -C 3 "isolation" the_origin.txt > isolation_context.txt

#D


