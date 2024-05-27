public String convert15to18DigitId(String fifteenDigit)
{
    // Always check for null first to avoid error:
    // System.NullPointerException: Attempt to de-reference a null object
    if (fifteenDigit == null) return null;

    if (fifteenDigit.length() != 15) return '-1';    
    
    return (Id) fifteenDigit;
}

// Anonymous Apex 
String fifteenDigit = '0SO90000000PBDu';
System.debug('fifteenDigit ::: ' + fifteenDigit);
String eighteenDigit = convert15to18DigitId(fifteenDigit);
System.debug('eighteenDigit ::: ' + eighteenDigit);