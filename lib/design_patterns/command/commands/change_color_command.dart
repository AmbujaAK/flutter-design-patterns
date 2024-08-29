// import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../command.dart';
import '../shape.dart';

class ChangeColorCommand implements Command {
  ChangeColorCommand(this.shape) : previousColor = shape.color;

  final Color previousColor;
  final Shape shape;

  @override
  String getTitle() => 'Change color';

  @override
  void execute() => shape.color = Colors.white;

  @override
  void undo() => shape.color = previousColor;
}
