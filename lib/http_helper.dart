import 'dart:io';
import 'package:http/http.dart' as http;

class HttpHelper {
  final String urlKey = 'api_key=d56b75979925b3f9c3de149ad935690b';
  final String urlBase = 'https://api.themoviedb.org/3/movie';
  final String urlUpcoming = '/upcoming?';
  final String urlLanguage = '&language=en-US';

  Future<String> getUpcoming() async {
    final upcoming =
        new Uri.http(urlBase + urlUpcoming + urlKey + urlLanguage, "");

    http.Response result = await http.get(upcoming);

    if (result.statusCode == HttpStatus.ok) {
      String responseBody = result.body;
      return responseBody;
    } else {
      return "Fail";
    }
  }
}
