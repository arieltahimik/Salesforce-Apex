// [Classes, Objects, and Interfaces](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes.htm)

class MyClass {

    String name;

    // Constructor w/o parameter
    MyClass() {
        System.debug('executing constructor...');
        name = 'Han Solo';
    }

    // Constructor with parameter
    MyClass(String username) {
        System.debug('executing constructor with parameter...');
        name = username;
    }

    // Method: sayHello
    void sayHello() {
        System.debug('hello, ' + name);
    }    
}

// Creating an instance of MyClass, no parameter, and calling it `c1`
MyClass c1 = new MyClass();
c1.sayHello();

// Creating an instance of MyClass, with parameter, and calling it `c1`
MyClass c2 = new MyClass('Luke Skywalker');
c2.sayHello();
