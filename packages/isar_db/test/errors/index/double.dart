// double properties cannot be indexed

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  @index
  double? val1;

  String? val2;
}
