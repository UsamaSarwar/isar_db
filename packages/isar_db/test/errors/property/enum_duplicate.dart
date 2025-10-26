// has duplicate values

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  late MyEnum field;
}

enum MyEnum {
  option1(1),
  option2(2),
  option3(1);

  const MyEnum(this.value);

  @enumValue
  final int value;
}
