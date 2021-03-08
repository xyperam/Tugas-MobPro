import 'dart:math';

abstract class Shape {
  factory Shape(String type){
    if (type == 'circle'){
      return Circle(5);
     }
    else if(type == 'square'){
      return Square(7);
    }
    throw 'Tidak bisa membuat $type';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class CircleMock implements Circle {
  num area;
  num radius;
}

void main() {
  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);
}