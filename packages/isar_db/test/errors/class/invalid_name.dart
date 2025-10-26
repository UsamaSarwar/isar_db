// must not be abstract

import 'package:isar_db/isar_db.dart';

@collection
abstract class Model {
  late int id;
}
