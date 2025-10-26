// only int and string properties can be used as id

import 'package:isar_db/isar_db.dart';

@collection
class Test {
  late TestEnum id;
}

enum TestEnum { a, b, c }
