class NetworkException implements Exception {
  String errorMessage() {
    return 'Failed to fetch data. Please check your network connection.';
  }
}
