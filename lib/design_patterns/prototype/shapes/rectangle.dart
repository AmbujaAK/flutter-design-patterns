import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../shape.dart';

class Rectangle extends Shape {
  Rectangle(super.color, this.height, this.width);

  Rectangle.initial([super.color = Colors.black])
      : height = 100.0,
        width = 100.0;

  Rectangle.clone(Rectangle super.source)
      : height = source.height,
        width = source.width,
        super.clone();

  double height;
  double width;

  @override
  Shape clone() => Rectangle.clone(this);

  @override
  void randomiseProperties() {
    color = Colors.white;
    height = random.integer(100, min: 50).toDouble();
    width = random.integer(100, min: 50).toDouble();
  }

  @override
  Widget render() {
    return SizedBox(
      height: 120.0,
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
          ),
          child: const Icon(
            Icons.star,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
