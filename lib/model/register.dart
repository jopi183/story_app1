import 'dart:convert';

class Register {
  bool error;
  String message;

  Register({
    required this.error,
    required this.message,
  });

  factory Register.fromRawJson(String str) => Register.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Register.fromJson(Map<String, dynamic> json) => Register(
    error: json["error"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "message": message,
  };
}
