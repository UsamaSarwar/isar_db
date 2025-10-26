// constructor parameter does not match a property

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  // ignore: avoid_unused_constructor_parameters - Test case for constructor parameter validation
  Model(this.prop1, String somethingElse);

  late int id;

  final String prop1;
}
