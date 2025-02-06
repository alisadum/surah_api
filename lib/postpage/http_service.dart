import 'dart:convert';
import 'package:http/http.dart';

class HttpService {
  final String apiURL = "https://quran-api.santrikoding.com/api/surah";

  Future<List<dynamic>> getSurahs() async {
    Response res = await get(Uri.parse(apiURL));

    if (res.statusCode == 200) {
      List<dynamic> json = jsonDecode(res.body); 
      return json;
    } else {
      throw "Unable to retrieve data.";
    }
  }
}
