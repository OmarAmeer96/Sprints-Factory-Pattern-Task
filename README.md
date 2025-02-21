# Sprints User Builder Pattern Task

## Overview

This project demonstrates the Builder Pattern in Dart by creating a `User` class and a `UserBuilder` class to facilitate the construction of `User` objects.

## Why Use the Builder Pattern?

The Builder Pattern helps construct complex objects step by step, improving readability and maintainability. Instead of cluttering constructors with optional parameters, the `UserBuilder` class allows for a clean and flexible way to create `User` instances.

## User Class

```dart
class User {
    final String firstName;
    final String lastName;
    final int? age;
    final String? phone;

    User({
        required this.firstName,
        required this.lastName,
        this.age,
        this.phone,
    });

    @override
    String toString() {
        return 'User {\n  firstName: $firstName,\n  lastName: $lastName,\n  age: $age,\n  phone: $phone\n}\n';
    }
}
```

## UserBuilder Class

```dart
class UserBuilder {
    final String firstName;
    final String lastName;
    int? age;
    String? phone;

    UserBuilder({
        required this.firstName,
        required this.lastName,
    });

    UserBuilder setAge(int age) {
        this.age = age;
        return this;
    }

    UserBuilder setPhone(String phone) {
        this.phone = phone;
        return this;
    }

    User build() {
        return User(
            firstName: firstName,
            lastName: lastName,
            age: age,
            phone: phone,
        );
    }
}
```

## Example Usage

```dart
void main() {
    // Creating a User with only required fields
    User user1 = UserBuilder(
        firstName: 'Omar',
        lastName: 'Ameer',
    ).build();
    print(user1);

    // Creating a User with all fields
    User user2 = UserBuilder(
        firstName: 'Will',
        lastName: 'Smith',
    ).setAge(30).setPhone('123-456-7890').build();
    print(user2);
}
```

## Output

```
User {
    firstName: Omar,
    lastName: Ameer,
    age: null,
    phone: null
}

User {
    firstName: Will,
    lastName: Smith,
    age: 30,
    phone: 123-456-7890
}
```

## Key Benefits

✅ Improves readability and maintainability.

✅ Allows flexible object creation with optional parameters.

✅ Reduces constructor parameter complexity.

## Conclusion

The Builder Pattern is a powerful way to construct objects with optional parameters in Dart. By separating object creation into a dedicated builder class, we achieve cleaner and more modular code.

## Shape Factory Pattern Task

## Overview

This project demonstrates the Factory Pattern in Dart by creating an abstract `MyShape` class and concrete implementations for different shapes. A `MyShapeFactory` class is used to instantiate the appropriate shape based on a given type.

## Why Use the Factory Pattern?

The Factory Pattern provides a way to create objects without specifying the exact class of object that will be created. It promotes loose coupling and enhances code maintainability.

## MyShape Class

```dart
abstract class MyShape {
  void revealMe();
}
```

## Shape Implementations

### MyCircle Class

```dart
class MyCircle implements MyShape {
  @override
  void revealMe() {
    print("Circle Shape");
  }
}
```

### MyRectangle Class

```dart
class MyRectangle implements MyShape {
  @override
  void revealMe() {
    print("Rectangle Shape");
  }
}
```

### MySquare Class

```dart
class MySquare implements MyShape {
  @override
  void revealMe() {
    print("Square Shape");
  }
}
```

## MyShapeFactory Class

```dart
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
```

## Example Usage

```dart
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
```

## Output

```
Circle Shape
Rectangle Shape
Square Shape
```

## Key Benefits

✅ Promotes loose coupling by abstracting the object creation process.

✅ Enhances code maintainability and flexibility.

✅ Simplifies the addition of new shape types without modifying existing code.

## Conclusion

The Factory Pattern is an effective way to manage object creation in Dart. By using a factory class, we can create instances of different shapes without tightly coupling the client code to the specific shape classes.
