import 'package:isar_db/isar_db.dart';

Future<void> prepareTest() async {
  await Isar.initialize('http://localhost:3000/isar.wasm');
}
