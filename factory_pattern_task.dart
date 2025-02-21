// Abstract Shape class with an abstract method revealMe()
abstract class MyShape {
  void revealMe();
}

// Implementation for Circle
class MyCircle implements MyShape {
  @override
  void revealMe() {
    print("Circle Shape");
  }
}

// Implementation for Rectangle
class MyRectangle implements MyShape {
  @override
  void revealMe() {
    print("Rectangle Shape");
  }
}

// Implementation for Square
class MySquare implements MyShape {
  @override
  void revealMe() {
    print("Square Shape");
  }
}

class MyShapeFactory {
  MyShape? getShape(String shapeType) {
    switch (shapeType.toLowerCase()) {
      case 'circle':
        return MyCircle();
      case 'rectangle':
        return MyRectangle();
      case 'square':
        return MySquare();
      default:
        print("Unknown shape type: $shapeType");
        return null;
    }
  }
}

void main() {
  // Create an instance of MyShapeFactory
  MyShapeFactory factory = MyShapeFactory();

  // Get and print a Circle
  MyShape? circle = factory.getShape("circle");
  circle?.revealMe();

  // Get and print a Rectangle
  MyShape? rectangle = factory.getShape("rectangle");
  rectangle?.revealMe();

  // Get and print a Square
  MyShape? square = factory.getShape("square");
  square?.revealMe();
}
