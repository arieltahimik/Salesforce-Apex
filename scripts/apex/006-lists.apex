//List<Integer> intList = new List<Integer>();
// Add values to list
//intList.add(12);
//intList.add(93);
//or
List<Integer> intList = new List<Integer>{12,93,47,51,23};

Integer listSize = intList.size();
System.debug(listSize);

Boolean isEmpty = intList.isEmpty();
System.debug(isEmpty);

System.debug(intList);

// Remove value from list position 2
intList.remove(2);      // 47 removed
System.debug(intList);

// Insert value to list
intList.add(2, 47); // position 2, value 47
System.debug(intList);

// Replace value at position 2
intList.set(2,150);
System.debug(intList);

// Get element at location
Integer element = intList.get(2);
System.debug('\n\nElement at index 2 is ' + element);

// Sort
System.debug('\n\nunsorted: ' + intList);
intList.sort();
System.debug('\n\nsorted: ' + intList);

// Looping thru a List
for (Integer element : intList) {
    System.debug(element);
}