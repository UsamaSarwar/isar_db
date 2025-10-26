// embedded object properties cannot be indexed

import 'package:isar_db/isar_db.dart';

@collection
class Model {
  late int id;

  @Index()
  EmbeddedModel? obj;
}

@embedded
class EmbeddedModel {}
