import 'dart:math';

abstract class Geometric {
  String color;
  bool filled;

  Geometric({this.color = "white", this.filled = false});

  Geometric.parameterized(this.color, this.filled);

  @override
  String toString() {
    return "Geometric: color = $color, filled = $filled";
  }

  double getArea();
  double getPerimeter();
}

class Triangle extends Geometric {
  double side1;
  double side2;
  double side3;

  Triangle() : side1 = 1.0, side2 = 1.0, side3 = 1.0, super();

  Triangle.parameterized(
    this.side1,
    this.side2,
    this.side3, {
    super.color,
    super.filled,
  });

  @override
  double getArea() {
    double s = getPerimeter() / 2;
    return sqrt((s * (s - side1) * (s - side2) * (s - side3)));
  }

  @override
  double getPerimeter() {
    return side1 + side2 + side3;
  }

  @override
  String toString() {
    return "Triangle: side1 = $side1, side2 = $side2, side3 = $side3";
  }
}

class Rectangle extends Geometric {
  double height;
  double width;

  Rectangle() : height = 1.0, width = 1.0, super();

  Rectangle.parameterized({
    required this.width,
    required this.height,
    super.color,
    super.filled,
  });

  @override
  double getArea() {
    return width * height;
  }

  @override
  double getPerimeter() {
    return 2 * (width + height);
  }

  @override
  String toString() {
    return "Rectangle: height = $height, width = $width";
  }
}

void main() {
  var triangle = Triangle.parameterized(3, 4, 5, color: "blue", filled: true);
  print(triangle);
  print("Area: ${triangle.getArea()}");
  print("Perimeter: ${triangle.getPerimeter()}");

  var rect = Rectangle.parameterized(
    width: 5,
    height: 10,
    color: "red",
    filled: true,
  );
  print(rect);
  print("Area: ${rect.getArea()}");
  print("Perimeter: ${rect.getPerimeter()}");
}
