// list properties cannot be indexed

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  @index
  List<int>? val1;

  String? val2;
}
