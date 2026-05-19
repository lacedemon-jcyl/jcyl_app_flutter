import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jcyl_app_flutter/country/data/models/country_dto.dart';
import 'package:jcyl_app_flutter/utils/urls.dart';

class RestCountryService {
  Future<CountryDto?> getCountry(String name) async {
    String urlString = ApiUrls.urlGetCountry(name);
    Uri url = Uri.parse(urlString);
    CountryDto? country;
    try {
      final response = await http.post(url);
      final bodyString = response.body;
      final body = jsonDecode(bodyString);
      List<dynamic> myResponse = body;
      country = CountryDto.fromJson(myResponse[0]);
      return country;
    } catch (e) {
      print(e);
    }
    return country;
  }
}
