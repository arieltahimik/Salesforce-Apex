/**
* PRIMITIVE DATA TYPES
* https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_primitives.htm
* All primitive data types are passed by value.
* All Apex variables, whether they’re class member variables or method variables, are initialized to null. 
* Make sure that you initialize your variables to appropriate values before using them.
*/

Integer i = 1;
Long l = 2147483648L;
Double pi = 3.14159;
Double e = 2.7182818284D;
Decimal d = 99.99;
String s = 'The quick brown fox jumped over the lazy dog.';
Boolean b = true;

System.debug(i);
System.debug(l);
System.debug(pi);
System.debug(e);
System.debug(d);
System.debug(s);
System.debug(b);
System.debug(!b); //Not true is false

