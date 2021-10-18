import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class DifService extends ParseObject implements ParseCloneable {
  DifService() : super(_keyTableName);

  DifService.clone() : this();

  @override
  dynamic clone(Map<String, dynamic> map) => DifService.clone()..fromJson(map);

  static const String _keyTableName = 'services';
  static const String keyName = 'DifService';

  String get name => get<String>('name') as String;

  String get imageUrl => get<ParseFile>('image')!.url as String;

  String get description => get<String>('description') as String;

  List<dynamic> get addresses => get('address');
}
