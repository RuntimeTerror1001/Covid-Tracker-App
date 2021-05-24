import 'dart:convert';

import 'package:http/http.dart' as http;

Future getData(String selectedCont) async {
  http.Response response = await http.get(Uri.parse(
      'https://coronavirus-19-api.herokuapp.com/countries/$selectedCont'));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return data;
  } else {
    print(response.statusCode);
    throw 'Problem with the get request';
  }
}
