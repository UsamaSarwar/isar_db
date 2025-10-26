// unsupported enum property type

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  late MyEnum prop;
}

enum MyEnum {
  optionA;

  @enumValue
  final List<String> value = [];
}
