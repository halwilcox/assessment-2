log_file = open("um-server-01.txt")
#created a variable that opens and external file

def sales_reports(log_file): #defining a function that pulls in parameter
    for line in log_file: #for loop 
        line = line.rstrip() #the rstrip method returns a copy of the string with trailing characters removed
        day = line[0:3] #pulling first 3 letters of the line and saving into a variable
        if day == "Mon": #specifying the day of the week they wish to be pulled. 
            print(line) #if it matches, print the entire line


sales_reports(log_file) #calling the function above
