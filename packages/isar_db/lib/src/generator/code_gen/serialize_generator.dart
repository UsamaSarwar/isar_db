// ignore_for_file: lines_longer_than_80_chars - Generated code may exceed line limits
part of '../isar_db_generator.dart';

String _generateSerialize(ObjectInfo object) {
  final buffer = StringBuffer();
  buffer.write(
    '''
  @isarProtected
  int serialize${object.dartName}(IsarWriter writer, ${object.dartName} object) {''',
  );

  for (final property in object.properties) {
    if (property.isId && property.type == IsarType.long) {
      continue;
    }

    buffer.write(
      _writeProperty(
        index: property.index.toString(),
        type: property.type,
        nullable: property.nullable,
        elementNullable: property.elementNullable,
        typeClassName: property.typeClassName,
        value: 'object.${property.dartName}',
        enumProperty: property.enumProperty,
      ),
    );
  }

  final idProp = object.idProperty;
  if (idProp != null) {
    if (idProp.type == IsarType.long) {
      buffer.write('return object.${idProp.dartName};');
    } else {
      buffer.write('return Isar.fastHash(object.${idProp.dartName});');
    }
  } else {
    buffer.write('return 0;');
  }

  buffer.write('}');
  return buffer.toString();
}

String _writeProperty({
  String writer = 'writer',
  required String index,
  required IsarType type,
  required bool nullable,
  bool? elementNullable,
  required String typeClassName,
  required String value,
  required String? enumProperty,
}) {
  final enumGetter = enumProperty != null
      ? nullable
            ? '?.$enumProperty'
            : '.$enumProperty'
      : '';
  switch (type) {
    case IsarType.bool:
      if (nullable) {
        return '''
        {
          final value = $value$enumGetter;
          if (value == null) {
            IsarCore.writeNull($writer, $index);
          } else {
            IsarCore.writeBool($writer, $index, value);
          }
        }''';
      } else {
        return 'IsarCore.writeBool($writer, $index, $value$enumGetter);';
      }
    case IsarType.byte:
      return 'IsarCore.writeByte($writer, $index, $value$enumGetter);';
    case IsarType.int:
      final orNull = nullable ? '?? $_nullInt' : '';
      return 'IsarCore.writeInt($writer, $index, $value$enumGetter $orNull);';
    case IsarType.float:
      final orNull = nullable ? '?? double.nan' : '';
      return 'IsarCore.writeFloat($writer, $index, $value$enumGetter $orNull);';
    case IsarType.long:
      final orNull = nullable ? '?? $_nullLong' : '';
      return 'IsarCore.writeLong($writer, $index, $value$enumGetter $orNull);';
    case IsarType.dateTime:
      const toMicros = 'toUtc().microsecondsSinceEpoch';
      final converted = nullable ? '$value$enumGetter?.$toMicros ?? $_nullLong' : '$value$enumGetter.$toMicros';
      return 'IsarCore.writeLong($writer, $index, $converted);';
    case IsarType.double:
      final orNull = nullable ? '?? double.nan' : '';
      return 'IsarCore.writeDouble($writer, $index, $value$enumGetter$orNull);';
    case IsarType.string:
      if (nullable) {
        return '''
        {
          final value = $value$enumGetter;
          if (value == null) {
            IsarCore.writeNull($writer, $index);
          } else {
            IsarCore.writeString($writer, $index, value);
          }
        }''';
      } else {
        return '''
        IsarCore.writeString($writer, $index, $value$enumGetter);''';
      }
    case IsarType.object:
      final buffer = StringBuffer();
      buffer.write('''
      {
        final value = $value;''');
      if (nullable) {
        buffer.write('''
        if (value == null) {
          IsarCore.writeNull($writer, $index);
        } else {''');
      }
      buffer.write('''
      final objectWriter = IsarCore.beginObject($writer, $index);
      serialize$typeClassName(objectWriter, value);
      IsarCore.endObject($writer, objectWriter);''');
      if (nullable) {
        buffer.write('}');
      }
      buffer.write('}');
      return buffer.toString();
    case IsarType.json:
      return 'IsarCore.writeString($writer, $index, isarJsonEncode($value));';
    case IsarType.boolList:
    case IsarType.byteList:
    case IsarType.intList:
    case IsarType.floatList:
    case IsarType.longList:
    case IsarType.dateTimeList:
    case IsarType.doubleList:
    case IsarType.stringList:
    case IsarType.objectList:
      final buffer = StringBuffer();
      buffer.write('''
      {
        final list = $value;''');
      if (nullable) {
        buffer.write('''
        if (list == null) {
          IsarCore.writeNull($writer, $index);
        } else {''');
      }
      buffer.write('''
      final listWriter = IsarCore.beginList(writer, $index, list.length);
      for (var i = 0; i < list.length; i++) {
        ${_writeProperty(writer: 'listWriter', index: 'i', type: type.scalarType, nullable: elementNullable!, typeClassName: typeClassName, value: 'list[i]', enumProperty: enumProperty)}
      }
      IsarCore.endList(writer, listWriter);
      ''');
      if (nullable) {
        buffer.write('}');
      }
      buffer.write('}');
      return buffer.toString();
  }
}
