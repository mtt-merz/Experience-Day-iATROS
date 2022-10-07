import 'package:experience_day_iatros/app/services/network.dart';
import 'package:experience_day_iatros/locator.dart';

const _authority = 'run.mocky.io';
const _version = 'v3';

Uri _buildUri(String path) => Uri.https(_authority, '/$_version/$path');

class API {
  static NetworkService get _network => Locator.get<NetworkService>();

  static Future<List<Map<String, dynamic>>> fetchCollection(String key) async {
    final url = _buildUri(key);
    final data = await _network.execute(method: 'GET', uri: url);
    return data;
  }
}
