import 'package:demo/models/newsmodel.dart';
import 'package:http/http.dart' as http;

class Remote {
  Future<Cart?> getuserdata() async {
    var client = http.Client();
    var url = Uri.parse(
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=2a527ec9c4e44c14b73225744b88b438");
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = response.body;
      // print(json);
      return cartFromJson(json);
    }
    return null;
  }
}
