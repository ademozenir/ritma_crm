import 'dart:convert';

import 'package:ritma_crm/model/api_response.dart';
import 'package:ritma_crm/model/login/login_request.dart';
import 'package:ritma_crm/model/login/login_response.dart';
import 'package:http/http.dart';

class RitmaFlexService {
  final String _baseUrl = 'https://demov2.ritmaflex.com/api';
  final Map<String, String> _headers = {"Content-Type": "application/json"};


  Future<LoginResponse> login(LoginRequest loginRequest) async {
    Uri uri = Uri.parse("$_baseUrl/Auth/Login");
    Response response = await post(uri, body: jsonEncode(loginRequest), headers: _headers);

    var map = jsonDecode(response.body) as Map<String, dynamic>;
    var apiResponse = ApiResponse.fromJson(map);

    if (apiResponse.success) {
      var loginResponse = LoginResponse.fromJson(map["data"]);
      _headers["Authorization"] = "Bearer ${loginResponse.token}";
      return loginResponse;
    }
    throw apiResponse.message;
  }
}
