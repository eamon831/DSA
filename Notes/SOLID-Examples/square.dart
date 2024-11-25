class Square {
  final double side;

  Square(this.side);

  double area() {
    return side * side;
  }
}

class Circle {
  final double radius;

  Circle(this.radius);

  double area() {
    return radius * radius * 3.14;
  }
}