import 'circle.dart';
import 'square.dart';

class AreaCalculator {
  double calculateArea(List<Object> shapes) {
    double area = 0;
    for (final shape in shapes) {
      if (shape is Square) {
        area += shape.area();
      } else if (shape is Circle) {
        area += shape.area();
      }
    }
    return area;
  }

  String json(List<Object> shapes) {
    return 'sum: ${calculateArea(shapes)}';
  }

  String csv(List<Object> shapes) {
    return 'sum,${calculateArea(shapes)}';
  }
}

// What's the issue with this code?
// The AreaCalculator class violates the Single Responsibility Principle because it has more than one reason to change.
// The AreaCalculator class is responsible for calculating the area of shapes and formatting the result as JSON.
// These two responsibilities should be separated into two different classes.
// The AreaCalculator class should be responsible for calculating the area of shapes, and a separate class should be responsible for formatting the result as JSON.

//let's refactor the code to separate the responsibilities of calculating the area of shapes and formatting the result as JSON.

import 'circle.dart';
import 'square.dart';

class AreaCalculator {
  double calculateArea(List<Object> shapes) {
    double area = 0;
    for (final shape in shapes) {
      if (shape is Square) {
        area += shape.area();
      } else if (shape is Circle) {
        area += shape.area();
      }
    }
    return area;
  }
}

class JsonFormatter {
  String format(double area) {
    return 'sum: $area';
  }
}

class CsvFormatter {
  String format(double area) {
    return 'sum,$area';
  }
}

// But but single responsibility principle does not mean that a class should only have one method. It means that a class should have only one reason to change.
// In this case, the AreaCalculator class has two reasons to change: if the calculation logic changes or if the formatting logic changes.
// we can put the print logic in a separate class to separate so the print logic can be changed without affecting the calculation logic.

import 'circle.dart';
import 'square.dart';

class AreaCalculator {
  double calculateArea(List<Object> shapes) {
    double area = 0;
    for (final shape in shapes) {
      if (shape is Square) {
        area += shape.area();
      } else if (shape is Circle) {
        area += shape.area();
      }
    }
    return area;
  }
}

class AreaPrinter {
  String json(double area) {
    return 'sum: $area';
  }

  String csv(double area) {
    return 'sum,$area';
  }
}

// The AreaCalculator class is now responsible for calculating the area of shapes, and the AreaPrinter class is responsible for formatting the result as JSON or CSV.
// This separation of responsibilities makes the code easier to maintain and extend.

// Now let's refactor the code to adhere to the Open/Closed Principle.



// What's the issue with this code?
// The AreaCalculator class violates the Open/Closed Principle because it is not closed for modification.
// If a new shape is added, the AreaCalculator class must be modified to include the new shape.
// This violates the Open/Closed Principle, which states that classes should be open for extension but closed for modification.
