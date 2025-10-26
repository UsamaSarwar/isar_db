// names must not be blank or start with "_"

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  @Name('_prop')
  String? prop;
}
