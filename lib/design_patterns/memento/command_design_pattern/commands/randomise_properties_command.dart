import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../../memento/imemento.dart';
import '../../originator.dart';
import '../icommand.dart';

class RandomisePropertiesCommand implements ICommand {
  RandomisePropertiesCommand(this.originator)
      : _backup = originator.createMemento();

  final Originator originator;
  final IMemento _backup;

  @override
  void execute() {
    final shape = originator.state;

    shape.color = Colors.white;
    shape.height = random.integer(150, min: 50).toDouble();
    shape.width = random.integer(150, min: 50).toDouble();
  }

  @override
  void undo() => originator.restore(_backup);
}
