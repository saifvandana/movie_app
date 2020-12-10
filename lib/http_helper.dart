import 'dart:io';

import 'package:http/http.dart' as http;

class HttpHelper {
  final String urlKey = 'api_key=495d8a6d6a0e1ef794497b716401537d';
  final String urlBase = 'https://api.themoviedb.org/3/movie';
  final String urlUpcoming = '/upcoming?';
  final String urlLanguage = '&language=en-US';

  Future<String> getUpcoming() async {
    final String upcoming = urlBase + urlUpcoming + urlKey + urlLanguage;
    http.Response result = await http.get(upcoming);
    if (result.statusCode == HttpStatus.ok) {
      String responseBody = result.body;
      return responseBody;
    } else {
      return null;
    }
  }
}
