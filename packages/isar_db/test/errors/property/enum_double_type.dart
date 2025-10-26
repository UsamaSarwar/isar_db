// unsupported enum property type

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  late MyEnum field;
}

enum MyEnum {
  optionA;

  @enumValue
  final double value = 5.5;
}
