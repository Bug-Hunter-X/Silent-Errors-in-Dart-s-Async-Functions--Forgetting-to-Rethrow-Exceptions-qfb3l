```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data like jsonData['key']
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    // Here is where you might forget to rethrow the exception leading to silent failures
  }
}
```