class Company {
  String? logo;
  String? name;

  Company({this.logo, this.name});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      logo: json['logo_path'] ?? "",
      name: json['name'] ?? "",
    );
  }
}