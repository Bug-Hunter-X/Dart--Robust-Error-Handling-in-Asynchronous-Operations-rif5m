```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      //Process the data here.  Example:
      print(jsonData);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // More sophisticated error handling could be done here 
    // such as logging, displaying a user-friendly message, or retrying the request.
  }
}

void main() async {
  await fetchData();
}
```