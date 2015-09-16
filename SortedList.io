//Clone an the Object 
SortedList := Object clone;

//Create an empty list array
SortedList list := list();

//Method to convert the list to string
SortedList toString := method(self list join(","));

//Method to add items to the list
SortedList addList := method(item,
	
	//if the item is a list object the iterate through each item and append as string. Otherwise just append to the list. 
	if(item type == "List") then(item foreach(item, self list append(item asString))) else(self list append(item asString));
	
	//sort the list once the loop is done.
	self list sortInPlace;
);

//Testing
//Clone the SortedList object 
listObj := SortedList clone;

//first listObj
list1 := list("Adam", "Sam", "Mike");
listObj addList(list1);
writeln("After first addList:");
writeln(listObj toString);

//second list
list2 := list("Becky", "Chelsea", "Molly");
listObj addList(list2);
writeln("After second addList:");
writeln(listObj toString);

//third list
list3 := list("Connor", "John", "Scott");
listObj addList(list3);
writeln("After third  addList:");
writeln(listObj toString);

