import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    print(response  );

    if (response.statusCode == 200) {
      print('right');
      String data = response.body;
      return jsonDecode(data);
    } else {
      print('wrong yeha');
      print(response.statusCode);
    }
  }
}
