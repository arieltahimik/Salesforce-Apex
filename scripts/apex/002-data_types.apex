/**
* PRIMITIVE DATA TYPES
* https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_primitives.htm
* All primitive data types are passed by value.
* All Apex variables, whether they’re class member variables or method variables, are initialized to null. 
* Make sure that you initialize your variables to appropriate values before using them.
*/

/* INTEGER
 * A 32-bit number that doesn’t include a decimal point. 
 * Integers have a minimum value of -2,147,483,648 and a maximum value of 2,147,483,647.
 */

Integer i = 1;

/* LONG
 * A 64-bit number that doesn’t include a decimal point. Longs have a minimum value of -2^63 and a maximum value of 2^63-1. 
 * Use this data type when you need a range of values wider than the range provided by Integer.
 */

Long l = 2147483648L;

/* DOUBLE
 * A 64-bit number that includes a decimal point. Doubles have a minimum value of -2^63 and a maximum value of 2^63-1
 */

Double pi = 3.14159;
Double e = 2.7182818284D;

/* DECIMAL
 * A number that includes a decimal point. 
 * Decimal is an arbitrary precision number. Currency fields are automatically assigned the type Decimal.
 */

Decimal d = 99.99;

/* STRING
 * Any set of characters surrounded by single quotes.
 */

String s = 'The quick brown fox jumped over the lazy dog.';

/* BOOLEAN
 * A value that can only be assigned true, false, or null.
 */

Boolean b = true;

/* DATE
 * A value that indicates a particular day. Unlike Datetime values, 
 * Date values contain no information about time. Always create date values with a system static method.
 */

/* DATETIME
 * A value that indicates a particular day and time, such as a timestamp. 
 * Always create datetime values with a system static method.
 */

/* TIME
 * A value that indicates a particular time. Always create time values with a system static method.
 */

/* ID
 * Any valid 18-character Lightning Platform record identifier.
 */

ID id='00300000003T2PGAA0';

System.debug(i);
System.debug(l);
System.debug(pi);
System.debug(e);
System.debug(d);
System.debug(s);
System.debug(b);
System.debug(!b); //Not true is false
System.debug(id);
