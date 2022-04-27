import 'dart:convert';

class TripModel {
  String date;
  String route;
  String count;
  String type;
  TripModel({
    required this.date,
    required this.route,
    required this.count,
    required this.type,
  });

  TripModel copyWith({
    String? date,
    String? route,
    String? count,
    String? type,
  }) {
    return TripModel(
      date: date ?? this.date,
      route: route ?? this.route,
      count: count ?? this.count,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'route': route,
      'Count': count,
      'Type': type,
      'author': 2,
    };
  }

  factory TripModel.fromMap(Map<String, dynamic> map) {
    return TripModel(
      date: map['date'] ?? '',
      route: map['route'] ?? '',
      count: map['Count'] ?? '',
      type: map['Type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TripModel.fromJson(String source) =>
      TripModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TripModel(date: $date, route: $route, count: $count, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TripModel &&
        other.date == date &&
        other.route == route &&
        other.count == count &&
        other.type == type;
  }

  @override
  int get hashCode {
    return date.hashCode ^ route.hashCode ^ count.hashCode ^ type.hashCode;
  }
}
