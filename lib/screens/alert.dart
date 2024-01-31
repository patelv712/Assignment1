class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method to print a greeting
  void greet() {
    print("Hello, my name is \$name and I am \$age years old.");
  }
}

void main() {
  // Creating an instance of Person
  var person = Person('Alice', 30);

  // Calling the greet method
  person.greet();
}