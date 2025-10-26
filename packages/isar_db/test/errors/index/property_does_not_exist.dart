// property does not exist

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  @Index(composite: ['myProp'])
  int? value;
}
