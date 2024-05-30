Set<Integer> intSet = new Set<Integer>{4,6,8};
System.debug('initial set: ' + intSet);

intSet.add(10);
System.debug('added 10: ' + intSet);

intSet.add(4);
System.debug('added  4: ' + intSet);

// Automatic sort
intSet.add(7);
System.debug('added  7: ' + intSet);

intSet.remove(7);
System.debug('removed  7: ' + intSet);

for (Integer element : intSet) {
    System.debug(element);
}

// Create Set from a List by passing the List to the Set as parameter
List<Integer> intList = new List<Integer>{4, 3, 2, 1, 2};
System.debug('\n\nlist: ' + intList);

Set<Integer> iSet = new Set<Integer>(intList);
System.debug('set:  ' + iSet);

// Create List from a Set
Set<Integer> iiSet = new Set<Integer>{1, 2, 3, 4};
System.debug('\n\nset: ' + iiSet);

List<Integer> iiList = new List<Integer>(iiSet);
System.debug('list:  ' + iiList);