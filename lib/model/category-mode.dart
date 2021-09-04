import 'dart:convert';

class CategoryClass {
  int? id;
  String? name;
  String? image;
  bool? selected;
  CategoryClass({
    this.id,
    this.name,
  });

  CategoryClass.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        id = json['id'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'id': id,
      };
}
