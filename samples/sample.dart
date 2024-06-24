void main() {
  //Printing
  print('Hello World');

  // VARIABLES

  // Declaring variables
  // Let dart identify the type of variable
  var sampleVar1 = 'Sample Var String 1';
  // Specify the type of variable
  int sampleVar2 = 2;
  String sampleVar3 = 'String';
  double sampleVar7 = 19.20;
  bool sampleVar8 = false;
  // Dynamic var if not sure what type
  dynamic sampleVar4 = 'sample';

  // Const and Final
  const int sampleVar5 = 3;
  final String sampleVar6 = 'Sample';

  var list1 = ["1", true, 3];
  list1[0] = 2; // Change item by indexing
  var list2 = []; // Empty List
  list2.add(1); // Add to list
  list2.addAll([1, 2, 3]); // Add multiple item to list
  list2.add([
    4,
    [5]
  ]); // Add list inside list
  list2.insert(2, "Insert at Position"); // Insert at specific position
  list2.insertAll(3, [1, 2, 3]); // Insert multiple at specific position
  list2.remove("Insert at Position"); // Removes item by statement
  list2.removeAt(3); // Removes item by index

  // Maps: Key Value Pairs
  // Note: List are [] Maps are {}
  var map1 = {"1": "2", "2": "1"};
  map1.addAll({"3": "3"});
  // print(map1.length);
  // LOOPS

  // Regular for loops
  for (var i = 1; i <= map1.length; i++) {
    // print(map1["$i"]);
  }
  // For in loops
  for (var items in list1) {
    // print(items);
  }
  // While Loops
  var counter = 1;
  while (counter <= map1.length) {
    print(map1["$counter"]);
    counter++;
  }
}

// Classes

class Person {
  String? name, sex;
  int? age;

  // Constructors
  Person(String name, sex, int age) {
    this.name = name;
    this.sex = sex;
    this.age = age;
  }
}
