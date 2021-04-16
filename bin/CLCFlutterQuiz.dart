import 'dart:io';

int card, ticket, perc;
void main(List<String> arguments) {
  //task1();
  //task5();
  //task6();
  //task8();
  //task9('erufhwuiecns', 'eiurgvierncfw');
}

void task1() {
  print('Please Enter your name and age');
  var age = int.parse(stdin.readLineSync());
  var name = stdin.readLineSync();
  print('Name: $name');
  print('Age: $age');
  print('${100 - age} years left to become 100 years old');
}

void task5() {
  print('Please enter a number');
  var number = int.parse(stdin.readLineSync());
  print('The all divisor of the number $number');
  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(i);
    }
  }
}

List<int> task6() {
  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 12];
  var b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  var c = [];
  for (var i = 0; i < a.length; i++) {
    for (var j = 0; j < b.length; j++) {
      if (b[j] == a[i]) {
        c.add(b[j]);
      }
    }
  }
  Set<int> tempSet = {};
  for (var item in c) {
    tempSet.add(item);
  }
  c.clear();
  for (var item in tempSet) {
    c.add(item);
  }
  return c;
}

int movie(var card, var ticket, var perc) {
  var counter;
}

List<dynamic> task8() {
  var a = [-4, -3, -2, -1, -0, -1, 0, 1, 2, 3, 4];
  var tempList1 = [];
  var tempList2 = [];
  for (var i = 0; i < a.length; i++) {
    if (a[i].isEven && a[i] != 0) {
      tempList1.add(a[i]);
    }
  }
  tempList1.sort();
  for (var i = 0; i < a.length; i++) {
    if (a[i].isOdd && a[i] != 0) {
      tempList2.add(a[i]);
    }
  }
  Set<int> tempSet = {};
  for (var item in tempList2) {
    tempSet.add(item);
  }
  tempList2.clear();
  for (var item in tempSet) {
    tempList2.add(item);
  }
  var tempItem = tempList2[0];
  for (var i = 0; i < tempList2.length; i++) {
    if (tempList2[i] > tempItem) {
      tempItem = tempList2[i];
    }
  }
  var tempList3 = [];
  for (var item in tempList1) {
    tempList3.add(item);
  }
  for (var item in tempList2) {
    tempList3.add(item);
  }
  return tempList3;
}

void task9(String a, String b) {
  var tempList = [];
  Set<int> tempSet = {};
  for (var items in a.runes) {
    tempList.add(items);
  }
  for (var items in b.runes) {
    tempList.add(items);
  }
  for (var item in tempList) {
    tempSet.add(item);
  }
  tempList.clear();
  for (var item in tempSet) {
    tempList.add(String.fromCharCode(item));
  }
  tempList.sort();
  var tempString = '';
  for (var item in tempList) {
    tempString += item;
  }
  print(tempString);
}
