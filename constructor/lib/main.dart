import 'package:flutter/material.dart';
import 'dart:io';
class Student {
  String name = "unknown";
  int age = 0;

  void display() {
    print("name: $name, age: $age");
  }
}
void main()
{
  var s1 =Student();
  print(s1.name);
  print(s1.age);
}
