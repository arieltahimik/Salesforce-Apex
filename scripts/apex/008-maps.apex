Map<Integer, String> employees = new Map<Integer,String>();

employees.put(101, 'Han Solo');
employees.put(102, 'Luke Skywalker');
employees.put(103, 'Chewbacca');
System.debug(employees);

employees.put(103, 'Princess Leia');
System.debug(employees);

String name = employees.get(102);
System.debug('name: ' + name);

employees.remove(102);
System.debug(employees);

employees.put(102, 'Luke Skywalker');
System.debug(employees);

Set<Integer> keySet = employees.keyset();
System.debug(keySet);

List<String> values = employees.values();
System.debug(values);

// Loop thru the keySet collection
for (Integer key : keySet) {
    // get(key) returns the value
    System.debug(key + ' => ' + employees.get(key));
}