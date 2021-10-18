import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class DifService extends ParseObject implements ParseCloneable {
  DifService() : super(_keyTableName);

  DifService.clone() : this();

  @override
  dynamic clone(Map<String, dynamic> map) => DifService.clone()..fromJson(map);

  static const String _keyTableName = 'services';
  static const String keyName = 'DifService';

  String get name => get<String>('name') as String;

  set name(String name) => set<String>(keyName, name);

  String get imageUrl => get<ParseFile>('image')!.url as String;

  String get description => get<String>('description') as String;

  set description(String description) => set<String>(keyName, description);

  int get id => get<int>('service_id') as int;

  set id(int id) => set<int>(keyName, id);

  List<dynamic> get addresses => get('address');

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
    };
  }

  @override
  String toString() {
    return 'Service{id: $id, name: $name, description: $description}';
  }
}
