class Goal {
  int id;
  String title;
  int color;

  Goal(this.id, this.title, this.color);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'color': color,
    };
  }

  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(
      json['id'],
      json['title'],
      json['color'],
    );
  }
}
