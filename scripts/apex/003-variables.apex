/*
VARIABLES:
Variables have three parts:
- Data type (String)
- Name (greetings)
- Value ('Hello World')
*/

// DECLARING VARIABLES

// Use SINGLE QUOTE to enclose the string
String greetings = 'Hello World';

// Declaring a couple Boolean variables below
Boolean codingIsFun = true;
Boolean codingShouldBeGateKept = false;

// Declaring an Integer variable below
Integer bankPinCode = 1234;
Integer year = 2023;

// Declaring a Boolean on the first line, assigning a value on the second
Boolean codingIsFun;
codingIsFun = true;


// Apex is statically typed, meaning you must define the datatype before using a variable.
forgotToSetDatatype = 10;
// apex needs to know the datatype. This will cause a compilation error.


// Integers can hold positive whole numbers, negative whole numbers, or zero.
// Use camelCase to declare variables with multiple words in them
Integer numberOfDaysInJanuary = 31; 
Integer mealsInADay = 3; 
Integer negativeFive = -5; 
Integer freezingInCelcius = 0; 


/*
ERRORS:
These would fail to compile/save.
Integer pi = 3.1415926; // trying to assign a Decimal value to an Integer
Integer someVariable = 'some random string of text'; // trying to assign a String to an Integer
Integer daysInJanuary = '31'; // trying to assign a String to an Integer
*/


// Declaring the variable without an initial value
Integer importantVariable; 
importantVariable = 5; // Assigning to 5
importantVariable = 7; // Re-assigning to 7
importantvariable = 31; // Re-assign to 31 

/*
Apex is case INSENSITIVE; it doesn't use capitalization to differentiate between variables. 

  integer mealsInADay = 3; 

NOT RECOMMENDED doing this. Integers are considered an Object datatype, so the first letter should be capitalized.
*/


// Decimal
Decimal amount = 500.12;
Decimal negativeBalance = -35.99;
Decimal magicNumber = 3.14159;

// Decimals can be reassigned too!
Decimal amount = 500.12;
amount = 450.65;
amount = 320.99;

// Decimal Methods
// https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_decimal.htm#apex_System_Decimal_methods


// Booleans
Boolean hasValidationPassed = true;
Boolean doesUserExist = false;
doesUserExist = true; 

Boolean isOpportunityClosed;
isOpportunityClosed = true; 

Boolean didILeaveTheStoveOn;
didILeaveTheStoveOn = false;

Boolean canProcceed = true;


// Strings
String errorMessage = 'Error! Unable to calculate the field Amount...'; 
String stayMotivated = 'Learning how to code! This is so great!';
String validRandomString = '@#$___%@ #$123234.345345 false'; 
String numberDeclaredAsString = '5'; // This isn't an Integer, it's a String
String booleanDeclaredAsString = 'true'; // This isn't a Boolean, it's a String


/*
String stayMotivated = 'I'm learning how to code'; // This wouldn't work.

The single quote in I\’m is interpreted as the end of the string, causing a compilation error. 
To fix this, use the escape character \. 
The escape character tells Apex that we want to treat the preceding single quote as a regular character within the string.

URL: https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_quotedstringescapes.htm
*/

String greeting = 'Good Morning';
Boolean containsMorning = greeting.contains('Morning'); // TRUE!

// Relying on a comment like this would just be silly:
// WARNING!!! DO NOT REASSIGN baseDiscount, THE CALCULATION WILL BE WRONG
Integer baseDiscount = 10;

// CORRECT, use 'final' keyword
final Integer BASE_DISCOUNT = 10;

/*
It is considered a proper styling convention to use UPPER_SNAKE_CASE when declaring constants. 
Every letter is capitalized and every word is separated by an underscore.
*/

final Integer MAXIMUM_DISCOUNT = 60; // this is fine
MAXIMUM_DISCOUNT = 50; // NOT ALLOWED! Results in a compile-time error.

// In the example below, a constant string will initialize the final error message:
final String DEFAULT_ERROR_MESSAGE = 'An unknown error has occurred. Reach out to your Salesforce Admin';
String finalErrorMessage = DEFAULT_ERROR_MESSAGE; // setting a default value until we figure out what specifically went wrong

// imagine there is logic here to figure out what went wrong.
finalErrorMessage = 'Could not calculate because ....'; // replacing with a more specific error message


// Apex Data Types
String greetings = 'Hello World. Good morning!';
Integer year = 2024;
Decimal pi = 3.14;
Double doubleNum = 5.1234;
Date dateToday = date.today();
DateTime currentDT = DateTime.now();
Time currentT = DateTime.now().time();
Boolean isCodingFun = true;
Boolean containsMorning = greetings.contains('morning');
final Integer BASE_DISCOUNT = 10;

System.debug('greetings: ' + greetings);
System.debug('year: ' + year);
System.debug('pi: ' + pi);
System.debug('doubleNum: ' + doubleNum);
System.debug('dateToday: ' + dateToday);
System.debug('currentDT: ' + currentDT);
System.debug('currentT: ' + currentT);
System.debug('isCodingFun: ' + isCodingFun);
System.debug('containsMorning: ' + containsMorning);
System.debug('BASE_DISCOUNT: ' + BASE_DISCOUNT);