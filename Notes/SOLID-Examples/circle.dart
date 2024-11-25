import 'shape.dart';

class Circle {
  final double radius;

  Circle(this.radius);

  double area() {
    return radius * radius * 3.14;
  }
}
