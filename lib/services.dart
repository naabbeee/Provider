import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:provider_project/models.dart';

class ProviderService {
  getAll() async {
    const url = "https://jsonplaceholder.typicode.com/posts";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final post = json.map((e) => Listusers(
            id: e["id"],
            userId: e["userId"],
            title: e["title"],
            body: e["body"],
          )).toList();
          return post;
    }
    return [];
  }
}
