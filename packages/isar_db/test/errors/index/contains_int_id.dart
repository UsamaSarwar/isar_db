// ids cannot be indexed

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  @Index(composite: ['id'])
  int? str;
}
