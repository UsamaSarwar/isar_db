// reserved keyword

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  String? prop1;

  @Name('unique')
  String? prop2;
}
