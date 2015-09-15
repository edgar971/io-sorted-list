//Clone an the Object 
SortedList := Object clone;

//Create an empty list array
SortedList list := list();

//Method to convert the list to string
SortedList toString := method(self list join(","));

//Method to add items to the list
SortedList addList := method(
	//for each argument 
	call message arguments foreach(item, 
		//add item as a string to the list 
		self list append(item asString);
	);
	//sort the list once the loop is done.
	self list sortInPlace;
);

//Testing
//Clone the SortedList object 
list := SortedList clone

//first list
list addList("Adam", "Sam", "Mike")
writeln("After first addList:")
writeln(list toString)

//second list
list addList("Becky", "Chelsea", "Molly")
writeln("After second addList:")
writeln(list toString)

//third list
list addList("Connor", "John", "Scott")
writeln("After third  addList:")
writeln(list toString)

