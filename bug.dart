```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = json.decode(response.body);
      // Use the jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle error
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled higher up in the call stack
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } catch (e) {
    print('An error occurred: $e');
  }
}
```