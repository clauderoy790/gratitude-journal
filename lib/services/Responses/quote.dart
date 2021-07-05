class Quote {
  final String message;
  final String author;

  Quote({
    required this.message,
    required this.author,
  });

  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(message: json['message'], author: json['author']);
  }
}
