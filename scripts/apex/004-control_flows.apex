// https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_control_flow.htm

// CONTROL FLOW STATEMENTS
// if, switch, do, while, for

// IF-ELSE
Integer place = 1;
String medal_color;
if (place == 1) {
    medal_color = 'gold';
} else if (place == 2) {
    medal_color = 'silver';
} else if (place == 3) {
    medal_color = 'bronze';
} else {
    medal_color = null;
}
System.debug(medal_color);


// FOR
// Note that an additional initialization variable, j, is included to demonstrate the syntax:
// j is not used in this example
for (Integer i = 0, j = 0; i < 10; i++) {
    System.debug(i+1);
}


// FOR, SWITCH
for(Integer i=1; i<6; i++) {
    switch on i {
        when 1 {
            System.debug('One');
        }
        when 2 {
            System.debug('Two');
        }
        when 3 {
            System.debug('Three');
        }
        when 4 {
            System.debug('Four');
        }
        when 5 {
            System.debug('Five');
        }
        when else {
            System.debug('Unexpected value');
        }
    }
}


// DO-WHILE
Integer count = 1;

do {
    System.debug(count);
    count++;
} while (count < 11);


// WHILE
Integer ctr = 1;

while (ctr < 11) {
    System.debug(ctr);
    ctr++;
}