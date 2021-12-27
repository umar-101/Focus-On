import 'package:http/http.dart' as http;
import 'model.dart';

class Services {
  static Future<List<User>> getUsers() async {
    // var url =
    //     Uri.http('jsonplaceholder.typicode.com', '/users', {'q': '{http}'});

    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      // final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<User> users = userFromJson(response.body);

        return users;
      } else {
        return <User>[];
      }
    } catch (e) {
      return <User>[];
    }
  }
}
