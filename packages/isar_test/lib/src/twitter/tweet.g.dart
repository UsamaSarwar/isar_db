// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetTweetCollection on Isar {
  IsarCollection<String, Tweet> get tweets => this.collection();
}

const TweetSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Tweet',
    idName: 'idStr',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'createdAt',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'idStr',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'source',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'truncated',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'inReplyToStatusIdStr',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'inReplyToUserIdStr',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'inReplyToScreenName',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'user',
        type: IsarType.object,
        target: 'User',
      ),
      IsarPropertySchema(
        name: 'coordinates',
        type: IsarType.object,
        target: 'Coordinates',
      ),
      IsarPropertySchema(
        name: 'place',
        type: IsarType.object,
        target: 'Place',
      ),
      IsarPropertySchema(
        name: 'quotedStatusIdStr',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'isQuoteStatus',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'quoteCount',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'replyCount',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'retweetCount',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'favoriteCount',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'entities',
        type: IsarType.object,
        target: 'Entities',
      ),
      IsarPropertySchema(
        name: 'extendedEntities',
        type: IsarType.object,
        target: 'Entities',
      ),
      IsarPropertySchema(
        name: 'favorited',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'retweeted',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'possiblySensitive',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'possiblySensitiveAppealable',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'currentUserRetweet',
        type: IsarType.object,
        target: 'CurrentUserRetweet',
      ),
      IsarPropertySchema(
        name: 'lang',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'quotedStatusPermalink',
        type: IsarType.object,
        target: 'QuotedStatusPermalink',
      ),
      IsarPropertySchema(
        name: 'fullText',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'displayTextRange',
        type: IsarType.longList,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<String, Tweet>(
    serialize: serializeTweet,
    deserialize: deserializeTweet,
    deserializeProperty: deserializeTweetProp,
  ),
  embeddedSchemas: [
    UserSchema,
    UserEntitiesSchema,
    UserEntityUrlSchema,
    UrlSchema,
    CoordinatesSchema,
    PlaceSchema,
    EntitiesSchema,
    HashtagSchema,
    MediaSchema,
    SizesSchema,
    SizeSchema,
    VideoInfoSchema,
    VariantSchema,
    AdditionalMediaInfoSchema,
    UserMentionSchema,
    SymbolSchema,
    PollSchema,
    OptionSchema,
    CurrentUserRetweetSchema,
    QuotedStatusPermalinkSchema
  ],
);

@isarProtected
int serializeTweet(IsarWriter writer, Tweet object) {
  IsarCore.writeLong(writer, 1,
      object.createdAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  IsarCore.writeString(writer, 2, object.idStr);
  {
    final value = object.source;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  {
    final value = object.truncated;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeBool(writer, 4, value);
    }
  }
  {
    final value = object.inReplyToStatusIdStr;
    if (value == null) {
      IsarCore.writeNull(writer, 5);
    } else {
      IsarCore.writeString(writer, 5, value);
    }
  }
  {
    final value = object.inReplyToUserIdStr;
    if (value == null) {
      IsarCore.writeNull(writer, 6);
    } else {
      IsarCore.writeString(writer, 6, value);
    }
  }
  {
    final value = object.inReplyToScreenName;
    if (value == null) {
      IsarCore.writeNull(writer, 7);
    } else {
      IsarCore.writeString(writer, 7, value);
    }
  }
  {
    final value = object.user;
    if (value == null) {
      IsarCore.writeNull(writer, 8);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 8);
      serializeUser(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  {
    final value = object.coordinates;
    if (value == null) {
      IsarCore.writeNull(writer, 9);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 9);
      serializeCoordinates(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  {
    final value = object.place;
    if (value == null) {
      IsarCore.writeNull(writer, 10);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 10);
      serializePlace(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  {
    final value = object.quotedStatusIdStr;
    if (value == null) {
      IsarCore.writeNull(writer, 11);
    } else {
      IsarCore.writeString(writer, 11, value);
    }
  }
  {
    final value = object.isQuoteStatus;
    if (value == null) {
      IsarCore.writeNull(writer, 12);
    } else {
      IsarCore.writeBool(writer, 12, value);
    }
  }
  IsarCore.writeLong(writer, 13, object.quoteCount ?? -9223372036854775808);
  IsarCore.writeLong(writer, 14, object.replyCount ?? -9223372036854775808);
  IsarCore.writeLong(writer, 15, object.retweetCount ?? -9223372036854775808);
  IsarCore.writeLong(writer, 16, object.favoriteCount ?? -9223372036854775808);
  {
    final value = object.entities;
    if (value == null) {
      IsarCore.writeNull(writer, 17);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 17);
      serializeEntities(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  {
    final value = object.extendedEntities;
    if (value == null) {
      IsarCore.writeNull(writer, 18);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 18);
      serializeEntities(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  {
    final value = object.favorited;
    if (value == null) {
      IsarCore.writeNull(writer, 19);
    } else {
      IsarCore.writeBool(writer, 19, value);
    }
  }
  {
    final value = object.retweeted;
    if (value == null) {
      IsarCore.writeNull(writer, 20);
    } else {
      IsarCore.writeBool(writer, 20, value);
    }
  }
  {
    final value = object.possiblySensitive;
    if (value == null) {
      IsarCore.writeNull(writer, 21);
    } else {
      IsarCore.writeBool(writer, 21, value);
    }
  }
  {
    final value = object.possiblySensitiveAppealable;
    if (value == null) {
      IsarCore.writeNull(writer, 22);
    } else {
      IsarCore.writeBool(writer, 22, value);
    }
  }
  {
    final value = object.currentUserRetweet;
    if (value == null) {
      IsarCore.writeNull(writer, 23);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 23);
      serializeCurrentUserRetweet(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  {
    final value = object.lang;
    if (value == null) {
      IsarCore.writeNull(writer, 24);
    } else {
      IsarCore.writeString(writer, 24, value);
    }
  }
  {
    final value = object.quotedStatusPermalink;
    if (value == null) {
      IsarCore.writeNull(writer, 25);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 25);
      serializeQuotedStatusPermalink(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  {
    final value = object.fullText;
    if (value == null) {
      IsarCore.writeNull(writer, 26);
    } else {
      IsarCore.writeString(writer, 26, value);
    }
  }
  {
    final list = object.displayTextRange;
    if (list == null) {
      IsarCore.writeNull(writer, 27);
    } else {
      final listWriter = IsarCore.beginList(writer, 27, list.length);
      for (var i = 0; i < list.length; i++) {
        IsarCore.writeLong(listWriter, i, list[i]);
      }
      IsarCore.endList(writer, listWriter);
    }
  }
  return Isar.fastHash(object.idStr);
}

@isarProtected
Tweet deserializeTweet(IsarReader reader) {
  final object = Tweet();
  {
    final value = IsarCore.readLong(reader, 1);
    if (value == -9223372036854775808) {
      object.createdAt = null;
    } else {
      object.createdAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  object.idStr = IsarCore.readString(reader, 2) ?? '';
  object.source = IsarCore.readString(reader, 3);
  {
    if (IsarCore.readNull(reader, 4)) {
      object.truncated = null;
    } else {
      object.truncated = IsarCore.readBool(reader, 4);
    }
  }
  object.inReplyToStatusIdStr = IsarCore.readString(reader, 5);
  object.inReplyToUserIdStr = IsarCore.readString(reader, 6);
  object.inReplyToScreenName = IsarCore.readString(reader, 7);
  {
    final objectReader = IsarCore.readObject(reader, 8);
    if (objectReader.isNull) {
      object.user = null;
    } else {
      final embedded = deserializeUser(objectReader);
      IsarCore.freeReader(objectReader);
      object.user = embedded;
    }
  }
  {
    final objectReader = IsarCore.readObject(reader, 9);
    if (objectReader.isNull) {
      object.coordinates = null;
    } else {
      final embedded = deserializeCoordinates(objectReader);
      IsarCore.freeReader(objectReader);
      object.coordinates = embedded;
    }
  }
  {
    final objectReader = IsarCore.readObject(reader, 10);
    if (objectReader.isNull) {
      object.place = null;
    } else {
      final embedded = deserializePlace(objectReader);
      IsarCore.freeReader(objectReader);
      object.place = embedded;
    }
  }
  object.quotedStatusIdStr = IsarCore.readString(reader, 11);
  {
    if (IsarCore.readNull(reader, 12)) {
      object.isQuoteStatus = null;
    } else {
      object.isQuoteStatus = IsarCore.readBool(reader, 12);
    }
  }
  {
    final value = IsarCore.readLong(reader, 13);
    if (value == -9223372036854775808) {
      object.quoteCount = null;
    } else {
      object.quoteCount = value;
    }
  }
  {
    final value = IsarCore.readLong(reader, 14);
    if (value == -9223372036854775808) {
      object.replyCount = null;
    } else {
      object.replyCount = value;
    }
  }
  {
    final value = IsarCore.readLong(reader, 15);
    if (value == -9223372036854775808) {
      object.retweetCount = null;
    } else {
      object.retweetCount = value;
    }
  }
  {
    final value = IsarCore.readLong(reader, 16);
    if (value == -9223372036854775808) {
      object.favoriteCount = null;
    } else {
      object.favoriteCount = value;
    }
  }
  {
    final objectReader = IsarCore.readObject(reader, 17);
    if (objectReader.isNull) {
      object.entities = null;
    } else {
      final embedded = deserializeEntities(objectReader);
      IsarCore.freeReader(objectReader);
      object.entities = embedded;
    }
  }
  {
    final objectReader = IsarCore.readObject(reader, 18);
    if (objectReader.isNull) {
      object.extendedEntities = null;
    } else {
      final embedded = deserializeEntities(objectReader);
      IsarCore.freeReader(objectReader);
      object.extendedEntities = embedded;
    }
  }
  {
    if (IsarCore.readNull(reader, 19)) {
      object.favorited = null;
    } else {
      object.favorited = IsarCore.readBool(reader, 19);
    }
  }
  {
    if (IsarCore.readNull(reader, 20)) {
      object.retweeted = null;
    } else {
      object.retweeted = IsarCore.readBool(reader, 20);
    }
  }
  {
    if (IsarCore.readNull(reader, 21)) {
      object.possiblySensitive = null;
    } else {
      object.possiblySensitive = IsarCore.readBool(reader, 21);
    }
  }
  {
    if (IsarCore.readNull(reader, 22)) {
      object.possiblySensitiveAppealable = null;
    } else {
      object.possiblySensitiveAppealable = IsarCore.readBool(reader, 22);
    }
  }
  {
    final objectReader = IsarCore.readObject(reader, 23);
    if (objectReader.isNull) {
      object.currentUserRetweet = null;
    } else {
      final embedded = deserializeCurrentUserRetweet(objectReader);
      IsarCore.freeReader(objectReader);
      object.currentUserRetweet = embedded;
    }
  }
  object.lang = IsarCore.readString(reader, 24);
  {
    final objectReader = IsarCore.readObject(reader, 25);
    if (objectReader.isNull) {
      object.quotedStatusPermalink = null;
    } else {
      final embedded = deserializeQuotedStatusPermalink(objectReader);
      IsarCore.freeReader(objectReader);
      object.quotedStatusPermalink = embedded;
    }
  }
  object.fullText = IsarCore.readString(reader, 26);
  {
    final length = IsarCore.readList(reader, 27, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        object.displayTextRange = null;
      } else {
        final list =
            List<int>.filled(length, -9223372036854775808, growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readLong(reader, i);
        }
        IsarCore.freeReader(reader);
        object.displayTextRange = list;
      }
    }
  }
  return object;
}

@isarProtected
dynamic deserializeTweetProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      {
        final value = IsarCore.readLong(reader, 1);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readString(reader, 3);
    case 4:
      {
        if (IsarCore.readNull(reader, 4)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 4);
        }
      }
    case 5:
      return IsarCore.readString(reader, 5);
    case 6:
      return IsarCore.readString(reader, 6);
    case 7:
      return IsarCore.readString(reader, 7);
    case 8:
      {
        final objectReader = IsarCore.readObject(reader, 8);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeUser(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 9:
      {
        final objectReader = IsarCore.readObject(reader, 9);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeCoordinates(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 10:
      {
        final objectReader = IsarCore.readObject(reader, 10);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializePlace(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 11:
      return IsarCore.readString(reader, 11);
    case 12:
      {
        if (IsarCore.readNull(reader, 12)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 12);
        }
      }
    case 13:
      {
        final value = IsarCore.readLong(reader, 13);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 14:
      {
        final value = IsarCore.readLong(reader, 14);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 15:
      {
        final value = IsarCore.readLong(reader, 15);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 16:
      {
        final value = IsarCore.readLong(reader, 16);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 17:
      {
        final objectReader = IsarCore.readObject(reader, 17);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeEntities(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 18:
      {
        final objectReader = IsarCore.readObject(reader, 18);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeEntities(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 19:
      {
        if (IsarCore.readNull(reader, 19)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 19);
        }
      }
    case 20:
      {
        if (IsarCore.readNull(reader, 20)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 20);
        }
      }
    case 21:
      {
        if (IsarCore.readNull(reader, 21)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 21);
        }
      }
    case 22:
      {
        if (IsarCore.readNull(reader, 22)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 22);
        }
      }
    case 23:
      {
        final objectReader = IsarCore.readObject(reader, 23);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeCurrentUserRetweet(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 24:
      return IsarCore.readString(reader, 24);
    case 25:
      {
        final objectReader = IsarCore.readObject(reader, 25);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeQuotedStatusPermalink(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 26:
      return IsarCore.readString(reader, 26);
    case 27:
      {
        final length = IsarCore.readList(reader, 27, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return null;
          } else {
            final list =
                List<int>.filled(length, -9223372036854775808, growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readLong(reader, i);
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _TweetUpdate {
  bool call({
    required String idStr,
    DateTime? createdAt,
    String? source,
    bool? truncated,
    String? inReplyToStatusIdStr,
    String? inReplyToUserIdStr,
    String? inReplyToScreenName,
    String? quotedStatusIdStr,
    bool? isQuoteStatus,
    int? quoteCount,
    int? replyCount,
    int? retweetCount,
    int? favoriteCount,
    bool? favorited,
    bool? retweeted,
    bool? possiblySensitive,
    bool? possiblySensitiveAppealable,
    String? lang,
    String? fullText,
  });
}

class _TweetUpdateImpl implements _TweetUpdate {
  const _TweetUpdateImpl(this.collection);

  final IsarCollection<String, Tweet> collection;

  @override
  bool call({
    required String idStr,
    Object? createdAt = ignore,
    Object? source = ignore,
    Object? truncated = ignore,
    Object? inReplyToStatusIdStr = ignore,
    Object? inReplyToUserIdStr = ignore,
    Object? inReplyToScreenName = ignore,
    Object? quotedStatusIdStr = ignore,
    Object? isQuoteStatus = ignore,
    Object? quoteCount = ignore,
    Object? replyCount = ignore,
    Object? retweetCount = ignore,
    Object? favoriteCount = ignore,
    Object? favorited = ignore,
    Object? retweeted = ignore,
    Object? possiblySensitive = ignore,
    Object? possiblySensitiveAppealable = ignore,
    Object? lang = ignore,
    Object? fullText = ignore,
  }) {
    return collection.updateProperties([
          idStr
        ], {
          if (createdAt != ignore) 1: createdAt as DateTime?,
          if (source != ignore) 3: source as String?,
          if (truncated != ignore) 4: truncated as bool?,
          if (inReplyToStatusIdStr != ignore)
            5: inReplyToStatusIdStr as String?,
          if (inReplyToUserIdStr != ignore) 6: inReplyToUserIdStr as String?,
          if (inReplyToScreenName != ignore) 7: inReplyToScreenName as String?,
          if (quotedStatusIdStr != ignore) 11: quotedStatusIdStr as String?,
          if (isQuoteStatus != ignore) 12: isQuoteStatus as bool?,
          if (quoteCount != ignore) 13: quoteCount as int?,
          if (replyCount != ignore) 14: replyCount as int?,
          if (retweetCount != ignore) 15: retweetCount as int?,
          if (favoriteCount != ignore) 16: favoriteCount as int?,
          if (favorited != ignore) 19: favorited as bool?,
          if (retweeted != ignore) 20: retweeted as bool?,
          if (possiblySensitive != ignore) 21: possiblySensitive as bool?,
          if (possiblySensitiveAppealable != ignore)
            22: possiblySensitiveAppealable as bool?,
          if (lang != ignore) 24: lang as String?,
          if (fullText != ignore) 26: fullText as String?,
        }) >
        0;
  }
}

sealed class _TweetUpdateAll {
  int call({
    required List<String> idStr,
    DateTime? createdAt,
    String? source,
    bool? truncated,
    String? inReplyToStatusIdStr,
    String? inReplyToUserIdStr,
    String? inReplyToScreenName,
    String? quotedStatusIdStr,
    bool? isQuoteStatus,
    int? quoteCount,
    int? replyCount,
    int? retweetCount,
    int? favoriteCount,
    bool? favorited,
    bool? retweeted,
    bool? possiblySensitive,
    bool? possiblySensitiveAppealable,
    String? lang,
    String? fullText,
  });
}

class _TweetUpdateAllImpl implements _TweetUpdateAll {
  const _TweetUpdateAllImpl(this.collection);

  final IsarCollection<String, Tweet> collection;

  @override
  int call({
    required List<String> idStr,
    Object? createdAt = ignore,
    Object? source = ignore,
    Object? truncated = ignore,
    Object? inReplyToStatusIdStr = ignore,
    Object? inReplyToUserIdStr = ignore,
    Object? inReplyToScreenName = ignore,
    Object? quotedStatusIdStr = ignore,
    Object? isQuoteStatus = ignore,
    Object? quoteCount = ignore,
    Object? replyCount = ignore,
    Object? retweetCount = ignore,
    Object? favoriteCount = ignore,
    Object? favorited = ignore,
    Object? retweeted = ignore,
    Object? possiblySensitive = ignore,
    Object? possiblySensitiveAppealable = ignore,
    Object? lang = ignore,
    Object? fullText = ignore,
  }) {
    return collection.updateProperties(idStr, {
      if (createdAt != ignore) 1: createdAt as DateTime?,
      if (source != ignore) 3: source as String?,
      if (truncated != ignore) 4: truncated as bool?,
      if (inReplyToStatusIdStr != ignore) 5: inReplyToStatusIdStr as String?,
      if (inReplyToUserIdStr != ignore) 6: inReplyToUserIdStr as String?,
      if (inReplyToScreenName != ignore) 7: inReplyToScreenName as String?,
      if (quotedStatusIdStr != ignore) 11: quotedStatusIdStr as String?,
      if (isQuoteStatus != ignore) 12: isQuoteStatus as bool?,
      if (quoteCount != ignore) 13: quoteCount as int?,
      if (replyCount != ignore) 14: replyCount as int?,
      if (retweetCount != ignore) 15: retweetCount as int?,
      if (favoriteCount != ignore) 16: favoriteCount as int?,
      if (favorited != ignore) 19: favorited as bool?,
      if (retweeted != ignore) 20: retweeted as bool?,
      if (possiblySensitive != ignore) 21: possiblySensitive as bool?,
      if (possiblySensitiveAppealable != ignore)
        22: possiblySensitiveAppealable as bool?,
      if (lang != ignore) 24: lang as String?,
      if (fullText != ignore) 26: fullText as String?,
    });
  }
}

extension TweetUpdate on IsarCollection<String, Tweet> {
  _TweetUpdate get update => _TweetUpdateImpl(this);

  _TweetUpdateAll get updateAll => _TweetUpdateAllImpl(this);
}

sealed class _TweetQueryUpdate {
  int call({
    DateTime? createdAt,
    String? source,
    bool? truncated,
    String? inReplyToStatusIdStr,
    String? inReplyToUserIdStr,
    String? inReplyToScreenName,
    String? quotedStatusIdStr,
    bool? isQuoteStatus,
    int? quoteCount,
    int? replyCount,
    int? retweetCount,
    int? favoriteCount,
    bool? favorited,
    bool? retweeted,
    bool? possiblySensitive,
    bool? possiblySensitiveAppealable,
    String? lang,
    String? fullText,
  });
}

class _TweetQueryUpdateImpl implements _TweetQueryUpdate {
  const _TweetQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Tweet> query;
  final int? limit;

  @override
  int call({
    Object? createdAt = ignore,
    Object? source = ignore,
    Object? truncated = ignore,
    Object? inReplyToStatusIdStr = ignore,
    Object? inReplyToUserIdStr = ignore,
    Object? inReplyToScreenName = ignore,
    Object? quotedStatusIdStr = ignore,
    Object? isQuoteStatus = ignore,
    Object? quoteCount = ignore,
    Object? replyCount = ignore,
    Object? retweetCount = ignore,
    Object? favoriteCount = ignore,
    Object? favorited = ignore,
    Object? retweeted = ignore,
    Object? possiblySensitive = ignore,
    Object? possiblySensitiveAppealable = ignore,
    Object? lang = ignore,
    Object? fullText = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (createdAt != ignore) 1: createdAt as DateTime?,
      if (source != ignore) 3: source as String?,
      if (truncated != ignore) 4: truncated as bool?,
      if (inReplyToStatusIdStr != ignore) 5: inReplyToStatusIdStr as String?,
      if (inReplyToUserIdStr != ignore) 6: inReplyToUserIdStr as String?,
      if (inReplyToScreenName != ignore) 7: inReplyToScreenName as String?,
      if (quotedStatusIdStr != ignore) 11: quotedStatusIdStr as String?,
      if (isQuoteStatus != ignore) 12: isQuoteStatus as bool?,
      if (quoteCount != ignore) 13: quoteCount as int?,
      if (replyCount != ignore) 14: replyCount as int?,
      if (retweetCount != ignore) 15: retweetCount as int?,
      if (favoriteCount != ignore) 16: favoriteCount as int?,
      if (favorited != ignore) 19: favorited as bool?,
      if (retweeted != ignore) 20: retweeted as bool?,
      if (possiblySensitive != ignore) 21: possiblySensitive as bool?,
      if (possiblySensitiveAppealable != ignore)
        22: possiblySensitiveAppealable as bool?,
      if (lang != ignore) 24: lang as String?,
      if (fullText != ignore) 26: fullText as String?,
    });
  }
}

extension TweetQueryUpdate on IsarQuery<Tweet> {
  _TweetQueryUpdate get updateFirst => _TweetQueryUpdateImpl(this, limit: 1);

  _TweetQueryUpdate get updateAll => _TweetQueryUpdateImpl(this);
}

class _TweetQueryBuilderUpdateImpl implements _TweetQueryUpdate {
  const _TweetQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Tweet, Tweet, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? createdAt = ignore,
    Object? source = ignore,
    Object? truncated = ignore,
    Object? inReplyToStatusIdStr = ignore,
    Object? inReplyToUserIdStr = ignore,
    Object? inReplyToScreenName = ignore,
    Object? quotedStatusIdStr = ignore,
    Object? isQuoteStatus = ignore,
    Object? quoteCount = ignore,
    Object? replyCount = ignore,
    Object? retweetCount = ignore,
    Object? favoriteCount = ignore,
    Object? favorited = ignore,
    Object? retweeted = ignore,
    Object? possiblySensitive = ignore,
    Object? possiblySensitiveAppealable = ignore,
    Object? lang = ignore,
    Object? fullText = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (createdAt != ignore) 1: createdAt as DateTime?,
        if (source != ignore) 3: source as String?,
        if (truncated != ignore) 4: truncated as bool?,
        if (inReplyToStatusIdStr != ignore) 5: inReplyToStatusIdStr as String?,
        if (inReplyToUserIdStr != ignore) 6: inReplyToUserIdStr as String?,
        if (inReplyToScreenName != ignore) 7: inReplyToScreenName as String?,
        if (quotedStatusIdStr != ignore) 11: quotedStatusIdStr as String?,
        if (isQuoteStatus != ignore) 12: isQuoteStatus as bool?,
        if (quoteCount != ignore) 13: quoteCount as int?,
        if (replyCount != ignore) 14: replyCount as int?,
        if (retweetCount != ignore) 15: retweetCount as int?,
        if (favoriteCount != ignore) 16: favoriteCount as int?,
        if (favorited != ignore) 19: favorited as bool?,
        if (retweeted != ignore) 20: retweeted as bool?,
        if (possiblySensitive != ignore) 21: possiblySensitive as bool?,
        if (possiblySensitiveAppealable != ignore)
          22: possiblySensitiveAppealable as bool?,
        if (lang != ignore) 24: lang as String?,
        if (fullText != ignore) 26: fullText as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension TweetQueryBuilderUpdate on QueryBuilder<Tweet, Tweet, QOperations> {
  _TweetQueryUpdate get updateFirst =>
      _TweetQueryBuilderUpdateImpl(this, limit: 1);

  _TweetQueryUpdate get updateAll => _TweetQueryBuilderUpdateImpl(this);
}

extension TweetQueryFilter on QueryBuilder<Tweet, Tweet, QFilterCondition> {
  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> createdAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> createdAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      createdAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> createdAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> createdAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> idStrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> idStrGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> idStrGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> idStrLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> idStrLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> idStrBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> idStrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> idStrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> idStrContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> idStrMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> idStrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> idStrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> sourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> truncatedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> truncatedIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> truncatedEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToStatusIdStrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToStatusIdStrIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToStatusIdStrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToStatusIdStrGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToStatusIdStrGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToStatusIdStrLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToStatusIdStrLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToStatusIdStrBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToStatusIdStrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToStatusIdStrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToStatusIdStrContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToStatusIdStrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToStatusIdStrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToStatusIdStrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToUserIdStrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToUserIdStrIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToUserIdStrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToUserIdStrGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToUserIdStrGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToUserIdStrLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToUserIdStrLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToUserIdStrBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToUserIdStrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToUserIdStrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToUserIdStrContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToUserIdStrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 6,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToUserIdStrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToUserIdStrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToScreenNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToScreenNameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToScreenNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToScreenNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToScreenNameGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToScreenNameLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToScreenNameLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToScreenNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToScreenNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToScreenNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToScreenNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> inReplyToScreenNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 7,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToScreenNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      inReplyToScreenNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> userIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> coordinatesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> coordinatesIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> placeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> placeIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quotedStatusIdStrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      quotedStatusIdStrIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quotedStatusIdStrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      quotedStatusIdStrGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      quotedStatusIdStrGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quotedStatusIdStrLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      quotedStatusIdStrLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quotedStatusIdStrBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 11,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quotedStatusIdStrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quotedStatusIdStrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quotedStatusIdStrContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quotedStatusIdStrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 11,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quotedStatusIdStrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      quotedStatusIdStrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> isQuoteStatusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 12));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> isQuoteStatusIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 12));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> isQuoteStatusEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 12,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quoteCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quoteCountIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quoteCountEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quoteCountGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      quoteCountGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quoteCountLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quoteCountLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quoteCountBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 13,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> replyCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 14));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> replyCountIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 14));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> replyCountEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> replyCountGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      replyCountGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> replyCountLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> replyCountLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> replyCountBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 14,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> retweetCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> retweetCountIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> retweetCountEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> retweetCountGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      retweetCountGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> retweetCountLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      retweetCountLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> retweetCountBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 15,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> favoriteCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 16));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> favoriteCountIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 16));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> favoriteCountEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> favoriteCountGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      favoriteCountGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> favoriteCountLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      favoriteCountLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> favoriteCountBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 16,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> entitiesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 17));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> entitiesIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 17));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> extendedEntitiesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 18));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      extendedEntitiesIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 18));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> favoritedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 19));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> favoritedIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 19));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> favoritedEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 19,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> retweetedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 20));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> retweetedIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 20));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> retweetedEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 20,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> possiblySensitiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 21));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      possiblySensitiveIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 21));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> possiblySensitiveEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 21,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      possiblySensitiveAppealableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 22));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      possiblySensitiveAppealableIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 22));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      possiblySensitiveAppealableEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 22,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> currentUserRetweetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 23));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      currentUserRetweetIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 23));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 24));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 24));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 24,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 24,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 24,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 24,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> langIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 24,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      quotedStatusPermalinkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 25));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      quotedStatusPermalinkIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 25));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 26));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 26));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 26,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 26,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      fullTextGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 26,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 26,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 26,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 26,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 26,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 26,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 26,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 26,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 26,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> fullTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 26,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> displayTextRangeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 27));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      displayTextRangeIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 27));
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      displayTextRangeElementEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 27,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      displayTextRangeElementGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 27,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      displayTextRangeElementGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 27,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      displayTextRangeElementLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 27,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      displayTextRangeElementLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 27,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      displayTextRangeElementBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 27,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> displayTextRangeIsEmpty() {
    return not().group(
      (q) => q.displayTextRangeIsNull().or().displayTextRangeIsNotEmpty(),
    );
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition>
      displayTextRangeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 27, value: null),
      );
    });
  }
}

extension TweetQueryObject on QueryBuilder<Tweet, Tweet, QFilterCondition> {
  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> user(FilterQuery<User> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 8);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> coordinates(
      FilterQuery<Coordinates> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 9);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> place(
      FilterQuery<Place> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 10);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> entities(
      FilterQuery<Entities> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 17);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> extendedEntities(
      FilterQuery<Entities> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 18);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> currentUserRetweet(
      FilterQuery<CurrentUserRetweet> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 23);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterFilterCondition> quotedStatusPermalink(
      FilterQuery<QuotedStatusPermalink> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 25);
    });
  }
}

extension TweetQuerySortBy on QueryBuilder<Tweet, Tweet, QSortBy> {
  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByIdStr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByIdStrDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortBySource(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortBySourceDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByTruncated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByTruncatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByInReplyToStatusIdStr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByInReplyToStatusIdStrDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByInReplyToUserIdStr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByInReplyToUserIdStrDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByInReplyToScreenName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByInReplyToScreenNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByQuotedStatusIdStr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByQuotedStatusIdStrDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByIsQuoteStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByIsQuoteStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByQuoteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByQuoteCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByReplyCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByReplyCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByRetweetCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByRetweetCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByFavoriteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByFavoriteCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByFavorited() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(19);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByFavoritedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(19, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByRetweeted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(20);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByRetweetedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(20, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByPossiblySensitive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(21);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByPossiblySensitiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(21, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByPossiblySensitiveAppealable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(22);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy>
      sortByPossiblySensitiveAppealableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(22, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByLang(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        24,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByLangDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        24,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByFullText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        26,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> sortByFullTextDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        26,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension TweetQuerySortThenBy on QueryBuilder<Tweet, Tweet, QSortThenBy> {
  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByIdStr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByIdStrDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenBySource(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenBySourceDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByTruncated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByTruncatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByInReplyToStatusIdStr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByInReplyToStatusIdStrDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByInReplyToUserIdStr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByInReplyToUserIdStrDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByInReplyToScreenName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByInReplyToScreenNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByQuotedStatusIdStr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByQuotedStatusIdStrDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByIsQuoteStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByIsQuoteStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByQuoteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByQuoteCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByReplyCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByReplyCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByRetweetCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByRetweetCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByFavoriteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByFavoriteCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByFavorited() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(19);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByFavoritedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(19, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByRetweeted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(20);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByRetweetedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(20, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByPossiblySensitive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(21);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByPossiblySensitiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(21, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByPossiblySensitiveAppealable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(22);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy>
      thenByPossiblySensitiveAppealableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(22, sort: Sort.desc);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByLang(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(24, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByLangDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(24, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByFullText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(26, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterSortBy> thenByFullTextDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(26, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension TweetQueryWhereDistinct on QueryBuilder<Tweet, Tweet, QDistinct> {
  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctBySource(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByTruncated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByInReplyToStatusIdStr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByInReplyToUserIdStr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByInReplyToScreenName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByQuotedStatusIdStr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(11, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByIsQuoteStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(12);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByQuoteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(13);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByReplyCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(14);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByRetweetCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(15);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByFavoriteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(16);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByFavorited() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(19);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByRetweeted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(20);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByPossiblySensitive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(21);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct>
      distinctByPossiblySensitiveAppealable() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(22);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByLang(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(24, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByFullText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(26, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tweet, Tweet, QAfterDistinct> distinctByDisplayTextRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(27);
    });
  }
}

extension TweetQueryProperty1 on QueryBuilder<Tweet, Tweet, QProperty> {
  QueryBuilder<Tweet, DateTime?, QAfterProperty> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Tweet, String, QAfterProperty> idStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Tweet, String?, QAfterProperty> sourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Tweet, bool?, QAfterProperty> truncatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Tweet, String?, QAfterProperty> inReplyToStatusIdStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<Tweet, String?, QAfterProperty> inReplyToUserIdStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<Tweet, String?, QAfterProperty> inReplyToScreenNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<Tweet, User?, QAfterProperty> userProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<Tweet, Coordinates?, QAfterProperty> coordinatesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<Tweet, Place?, QAfterProperty> placeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<Tweet, String?, QAfterProperty> quotedStatusIdStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<Tweet, bool?, QAfterProperty> isQuoteStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<Tweet, int?, QAfterProperty> quoteCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<Tweet, int?, QAfterProperty> replyCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<Tweet, int?, QAfterProperty> retweetCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<Tweet, int?, QAfterProperty> favoriteCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<Tweet, Entities?, QAfterProperty> entitiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }

  QueryBuilder<Tweet, Entities?, QAfterProperty> extendedEntitiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(18);
    });
  }

  QueryBuilder<Tweet, bool?, QAfterProperty> favoritedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(19);
    });
  }

  QueryBuilder<Tweet, bool?, QAfterProperty> retweetedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(20);
    });
  }

  QueryBuilder<Tweet, bool?, QAfterProperty> possiblySensitiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(21);
    });
  }

  QueryBuilder<Tweet, bool?, QAfterProperty>
      possiblySensitiveAppealableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(22);
    });
  }

  QueryBuilder<Tweet, CurrentUserRetweet?, QAfterProperty>
      currentUserRetweetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(23);
    });
  }

  QueryBuilder<Tweet, String?, QAfterProperty> langProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(24);
    });
  }

  QueryBuilder<Tweet, QuotedStatusPermalink?, QAfterProperty>
      quotedStatusPermalinkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(25);
    });
  }

  QueryBuilder<Tweet, String?, QAfterProperty> fullTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(26);
    });
  }

  QueryBuilder<Tweet, List<int>?, QAfterProperty> displayTextRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(27);
    });
  }
}

extension TweetQueryProperty2<R> on QueryBuilder<Tweet, R, QAfterProperty> {
  QueryBuilder<Tweet, (R, DateTime?), QAfterProperty> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Tweet, (R, String), QAfterProperty> idStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Tweet, (R, String?), QAfterProperty> sourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Tweet, (R, bool?), QAfterProperty> truncatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Tweet, (R, String?), QAfterProperty>
      inReplyToStatusIdStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<Tweet, (R, String?), QAfterProperty>
      inReplyToUserIdStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<Tweet, (R, String?), QAfterProperty>
      inReplyToScreenNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<Tweet, (R, User?), QAfterProperty> userProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<Tweet, (R, Coordinates?), QAfterProperty> coordinatesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<Tweet, (R, Place?), QAfterProperty> placeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<Tweet, (R, String?), QAfterProperty>
      quotedStatusIdStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<Tweet, (R, bool?), QAfterProperty> isQuoteStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<Tweet, (R, int?), QAfterProperty> quoteCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<Tweet, (R, int?), QAfterProperty> replyCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<Tweet, (R, int?), QAfterProperty> retweetCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<Tweet, (R, int?), QAfterProperty> favoriteCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<Tweet, (R, Entities?), QAfterProperty> entitiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }

  QueryBuilder<Tweet, (R, Entities?), QAfterProperty>
      extendedEntitiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(18);
    });
  }

  QueryBuilder<Tweet, (R, bool?), QAfterProperty> favoritedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(19);
    });
  }

  QueryBuilder<Tweet, (R, bool?), QAfterProperty> retweetedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(20);
    });
  }

  QueryBuilder<Tweet, (R, bool?), QAfterProperty> possiblySensitiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(21);
    });
  }

  QueryBuilder<Tweet, (R, bool?), QAfterProperty>
      possiblySensitiveAppealableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(22);
    });
  }

  QueryBuilder<Tweet, (R, CurrentUserRetweet?), QAfterProperty>
      currentUserRetweetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(23);
    });
  }

  QueryBuilder<Tweet, (R, String?), QAfterProperty> langProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(24);
    });
  }

  QueryBuilder<Tweet, (R, QuotedStatusPermalink?), QAfterProperty>
      quotedStatusPermalinkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(25);
    });
  }

  QueryBuilder<Tweet, (R, String?), QAfterProperty> fullTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(26);
    });
  }

  QueryBuilder<Tweet, (R, List<int>?), QAfterProperty>
      displayTextRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(27);
    });
  }
}

extension TweetQueryProperty3<R1, R2>
    on QueryBuilder<Tweet, (R1, R2), QAfterProperty> {
  QueryBuilder<Tweet, (R1, R2, DateTime?), QOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Tweet, (R1, R2, String), QOperations> idStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Tweet, (R1, R2, String?), QOperations> sourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Tweet, (R1, R2, bool?), QOperations> truncatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Tweet, (R1, R2, String?), QOperations>
      inReplyToStatusIdStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<Tweet, (R1, R2, String?), QOperations>
      inReplyToUserIdStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<Tweet, (R1, R2, String?), QOperations>
      inReplyToScreenNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<Tweet, (R1, R2, User?), QOperations> userProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<Tweet, (R1, R2, Coordinates?), QOperations>
      coordinatesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<Tweet, (R1, R2, Place?), QOperations> placeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<Tweet, (R1, R2, String?), QOperations>
      quotedStatusIdStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<Tweet, (R1, R2, bool?), QOperations> isQuoteStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<Tweet, (R1, R2, int?), QOperations> quoteCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<Tweet, (R1, R2, int?), QOperations> replyCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<Tweet, (R1, R2, int?), QOperations> retweetCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<Tweet, (R1, R2, int?), QOperations> favoriteCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<Tweet, (R1, R2, Entities?), QOperations> entitiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }

  QueryBuilder<Tweet, (R1, R2, Entities?), QOperations>
      extendedEntitiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(18);
    });
  }

  QueryBuilder<Tweet, (R1, R2, bool?), QOperations> favoritedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(19);
    });
  }

  QueryBuilder<Tweet, (R1, R2, bool?), QOperations> retweetedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(20);
    });
  }

  QueryBuilder<Tweet, (R1, R2, bool?), QOperations>
      possiblySensitiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(21);
    });
  }

  QueryBuilder<Tweet, (R1, R2, bool?), QOperations>
      possiblySensitiveAppealableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(22);
    });
  }

  QueryBuilder<Tweet, (R1, R2, CurrentUserRetweet?), QOperations>
      currentUserRetweetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(23);
    });
  }

  QueryBuilder<Tweet, (R1, R2, String?), QOperations> langProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(24);
    });
  }

  QueryBuilder<Tweet, (R1, R2, QuotedStatusPermalink?), QOperations>
      quotedStatusPermalinkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(25);
    });
  }

  QueryBuilder<Tweet, (R1, R2, String?), QOperations> fullTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(26);
    });
  }

  QueryBuilder<Tweet, (R1, R2, List<int>?), QOperations>
      displayTextRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(27);
    });
  }
}

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const CurrentUserRetweetSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'CurrentUserRetweet',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'idStr',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, CurrentUserRetweet>(
    serialize: serializeCurrentUserRetweet,
    deserialize: deserializeCurrentUserRetweet,
  ),
);

@isarProtected
int serializeCurrentUserRetweet(IsarWriter writer, CurrentUserRetweet object) {
  {
    final value = object.idStr;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  return 0;
}

@isarProtected
CurrentUserRetweet deserializeCurrentUserRetweet(IsarReader reader) {
  final object = CurrentUserRetweet();
  object.idStr = IsarCore.readString(reader, 1);
  return object;
}

extension CurrentUserRetweetQueryFilter
    on QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QFilterCondition> {
  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QAfterFilterCondition>
      idStrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }
}

extension CurrentUserRetweetQueryObject
    on QueryBuilder<CurrentUserRetweet, CurrentUserRetweet, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const QuotedStatusPermalinkSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'QuotedStatusPermalink',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'url',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'expanded',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'display',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, QuotedStatusPermalink>(
    serialize: serializeQuotedStatusPermalink,
    deserialize: deserializeQuotedStatusPermalink,
  ),
);

@isarProtected
int serializeQuotedStatusPermalink(
    IsarWriter writer, QuotedStatusPermalink object) {
  {
    final value = object.url;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  {
    final value = object.expanded;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final value = object.display;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  return 0;
}

@isarProtected
QuotedStatusPermalink deserializeQuotedStatusPermalink(IsarReader reader) {
  final object = QuotedStatusPermalink();
  object.url = IsarCore.readString(reader, 1);
  object.expanded = IsarCore.readString(reader, 2);
  object.display = IsarCore.readString(reader, 3);
  return object;
}

extension QuotedStatusPermalinkQueryFilter on QueryBuilder<
    QuotedStatusPermalink, QuotedStatusPermalink, QFilterCondition> {
  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> urlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> urlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> urlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> urlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> urlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
          QAfterFilterCondition>
      urlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
          QAfterFilterCondition>
      urlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> expandedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> expandedIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> expandedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> expandedGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> expandedGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> expandedLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> expandedLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> expandedBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> expandedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> expandedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
          QAfterFilterCondition>
      expandedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
          QAfterFilterCondition>
      expandedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> expandedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> expandedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> displayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> displayIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> displayEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> displayGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> displayGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> displayLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> displayLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> displayBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> displayStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> displayEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
          QAfterFilterCondition>
      displayContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
          QAfterFilterCondition>
      displayMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> displayIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QuotedStatusPermalink, QuotedStatusPermalink,
      QAfterFilterCondition> displayIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }
}

extension QuotedStatusPermalinkQueryObject on QueryBuilder<
    QuotedStatusPermalink, QuotedStatusPermalink, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tweet _$TweetFromJson(Map<String, dynamic> json) => Tweet()
  ..createdAt = convertTwitterDateTime(json['created_at'] as String?)
  ..idStr = json['id_str'] as String
  ..source = json['source'] as String?
  ..truncated = json['truncated'] as bool?
  ..inReplyToStatusIdStr = json['in_reply_to_status_id_str'] as String?
  ..inReplyToUserIdStr = json['in_reply_to_user_id_str'] as String?
  ..inReplyToScreenName = json['in_reply_to_screen_name'] as String?
  ..user = json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>)
  ..coordinates = json['coordinates'] == null
      ? null
      : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>)
  ..place = json['place'] == null
      ? null
      : Place.fromJson(json['place'] as Map<String, dynamic>)
  ..quotedStatusIdStr = json['quoted_status_id_str'] as String?
  ..isQuoteStatus = json['is_quote_status'] as bool?
  ..quoteCount = (json['quote_count'] as num?)?.toInt()
  ..replyCount = (json['reply_count'] as num?)?.toInt()
  ..retweetCount = (json['retweet_count'] as num?)?.toInt()
  ..favoriteCount = (json['favorite_count'] as num?)?.toInt()
  ..entities = json['entities'] == null
      ? null
      : Entities.fromJson(json['entities'] as Map<String, dynamic>)
  ..extendedEntities = json['extended_entities'] == null
      ? null
      : Entities.fromJson(json['extended_entities'] as Map<String, dynamic>)
  ..favorited = json['favorited'] as bool?
  ..retweeted = json['retweeted'] as bool?
  ..possiblySensitive = json['possibly_sensitive'] as bool?
  ..possiblySensitiveAppealable = json['possibly_sensitive_appealable'] as bool?
  ..currentUserRetweet = json['current_user_retweet'] == null
      ? null
      : CurrentUserRetweet.fromJson(
          json['current_user_retweet'] as Map<String, dynamic>)
  ..lang = json['lang'] as String?
  ..quotedStatusPermalink = json['quoted_status_permalink'] == null
      ? null
      : QuotedStatusPermalink.fromJson(
          json['quoted_status_permalink'] as Map<String, dynamic>)
  ..fullText = json['full_text'] as String?
  ..displayTextRange = (json['display_text_range'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList();

CurrentUserRetweet _$CurrentUserRetweetFromJson(Map<String, dynamic> json) =>
    CurrentUserRetweet()..idStr = json['id_str'] as String?;

QuotedStatusPermalink _$QuotedStatusPermalinkFromJson(
        Map<String, dynamic> json) =>
    QuotedStatusPermalink()
      ..url = json['url'] as String?
      ..expanded = json['expanded'] as String?
      ..display = json['display'] as String?;
