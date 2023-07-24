class Employee {
  final int id;
  final String name;
  final String address;
  final int age;
  final String profilePictureUrl;
  const Employee({
    required this.id,
    required this.name,
    required this.address,
    required this.age,
    required this.profilePictureUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'age': age,
      "profilePictureUrl": profilePictureUrl
    };
  }

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      id: map['id'],
      name: map['name'],
      address: map['address'],
      age: map['age'],
      profilePictureUrl: map["profilePictureUrl"],
    );
  }
}
