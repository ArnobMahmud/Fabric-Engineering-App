import '../models/model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class APIHandler {
  Future<List<Resource>> getResources(String endpoint) async {
    var url = Uri.parse(
        "https://fabric-web-backend-server.onrender.com/api/v1/resources/$endpoint");
    final response = await http.get(url);
    final List body = json.decode(response.body);
    return body.map((e) => Resource.fromJson(e)).toList();
  }
}
