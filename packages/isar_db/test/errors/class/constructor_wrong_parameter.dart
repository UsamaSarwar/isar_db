// constructor parameter type does not match property type

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  // ignore: avoid_unused_constructor_parameters - Test case for constructor parameter type validation
  Model(int prop1);

  late int id;

  String prop1 = '5';
}
