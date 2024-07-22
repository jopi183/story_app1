import 'dart:convert';

class AddNewStory {
  bool error;
  String message;

  AddNewStory({
    required this.error,
    required this.message,
  });

  factory AddNewStory.fromRawJson(String str) => AddNewStory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddNewStory.fromJson(Map<String, dynamic> json) => AddNewStory(
    error: json["error"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "message": message,
  };
}
