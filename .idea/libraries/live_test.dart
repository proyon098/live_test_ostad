import 'dart:io';

void main() {
  triangle();
}

void triangle() {
  print("Write the base of the triangle:");
  double? base = double.tryParse(stdin.readLineSync()!);
  print("Write the height of the triangle:");
  double? height = double.tryParse(stdin.readLineSync()!);
  if (base != null && height != null) {
    double area = 0.5 * base * height;
    print("The total area of the triangle is: $area");
  } else {
    print(
        "Invalid input.Please enter valid inputs that are numeric values for base and height.");
  }
}
