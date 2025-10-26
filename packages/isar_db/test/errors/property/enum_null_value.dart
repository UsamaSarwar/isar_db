// null values are not supported

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  late MyEnum prop;
}

enum MyEnum {
  optionA;

  @enumValue
  final String? value = null;
}
