// json properties cannot be indexed

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  @index
  dynamic val1;

  String? val2;
}
