// 1. Create 10 new Accounts
List<Account> accounts = new List<Account>();
for(Integer i=1; i<11; i++) {
    Account acct = new Account();
    acct.Name = 'Assignment Account ' + i;
    accounts.add(acct);
}
insert accounts;

// 2. Assign each account a different number of employees
for (Account acc : accounts) {
    acc.NumberOfEmployees = Integer.valueof(Math.random() * 5000 + 1000);
}
update accounts;

// 3. Write a SOQL Query that retrieves Accounts from the database
List<Account> accs = [SELECT Id, Name, NumberOfEmployees FROM Account WHERE Name LIKE 'Assignment Account%'];
System.debug('ASSIGNMENT ACCOUNTS ::: ' + accs);

// 4a. Retrieves the 5 Accounts with the fewest number of employees.
List<Account> fewestEmp = [
    SELECT Id, Name, NumberOfEmployees 
    FROM Account 
    WHERE Name LIKE 'Assignment Account%' 
    ORDER BY NumberOfEmployees LIMIT 5
];
System.debug('5 Accounts with fewest employees: ' + fewestEmp);

// 4b. Displays them in order from lowest number of employees to highest.
List<Account> sortedEmp = [
    SELECT Id, Name, NumberOfEmployees 
    FROM Account 
    WHERE Name LIKE 'Assignment Account%' 
    ORDER BY NumberOfEmployees ASC
];
System.debug('ACCOUNTS SORTED BY NUM of EMPS ::: ' + sortedEmp);

// 4c. Do not include Accounts with blank number of employees in the results
List<Account> noNullEmp = [
    SELECT Id, Name, NumberOfEmployees 
    FROM Account
    WHERE NumberOfEmployees != NULL
];
System.debug('ACCOUNTS WITH noNullEmp ::: ' + noNullEmp);



/*
 * QUERY TO DELETE THE CREATED ACCOUNTS ABOVE
 * TO RE-RUN THE CODE ABOVE AGAIN & AVOID ERROR
 
 List<Account> query1 = [
    SELECT Id
    FROM Account
    WHERE Name LIKE 'Assignment Account%'
];

System.debug('BEFORE DELETE :::  ' + query1);
delete query1;

 List<Account> query2 = [
    SELECT Id
    FROM Account
    WHERE Name LIKE 'Assignment Account%'
];
System.debug('AFTER DELETE ::: ' + query2);

 */