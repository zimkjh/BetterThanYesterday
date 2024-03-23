import 'dart:ui';

class Todo {
  int id;
  String title;
  Color color;

  Todo(this.id, this.title, this.color);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'color': color.value,
    };
  }

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      json['id'],
      json['title'],
      Color(json['color']),
    );
  }
}
