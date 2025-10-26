// bytes must not be nullable

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  late List<byte?> prop;
}
