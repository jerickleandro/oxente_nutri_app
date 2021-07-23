import 'dart:convert';

class MealModel {
  String? id;
  double? quantity;
  String? type;

  MealModel({
    this.id,
    this.quantity,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quantity': quantity,
      'type': type,
    };
  }

  factory MealModel.fromMap(Map<String, dynamic> map) {
    //if (map == null) return null;

    return MealModel(
      id: map['id'],
      quantity: map['quantity'],
      type: map['type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MealModel.fromJson(String source) =>
      MealModel.fromMap(json.decode(source));
}
