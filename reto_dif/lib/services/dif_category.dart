import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class DifCategory extends ParseObject implements ParseCloneable {
  DifCategory() : super(_keyTableName);

  DifCategory.clone() : this();

  @override
  dynamic clone(Map<String, dynamic> map) => DifCategory.clone()..fromJson(map);

  static const String _keyTableName = 'categories';
  static const String keyName = 'DifCategory';

  String get name => get<String>('name') as String;

  String get iconUrl => get<ParseFile>('icon')!.url as String;
}
