class HttpExceptioN implements Exception {
  final String msg;
  final int statusCode;

  HttpExceptioN({
    required this.msg,
    required this.statusCode,
  });

  @override
  String toString() {
    return msg;
  }
}