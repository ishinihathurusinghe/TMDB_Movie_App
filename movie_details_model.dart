import 'package:tmdb_movie_app/models/company_model.dart';

class MovieDetailsModel {
  bool? isAdult;
  String? tagline;
  List<Company>? company;

  MovieDetailsModel({this.company, this.isAdult, this.tagline});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    List<Company> companies = (json['production_companies'] as List)
        .map((company) => Company.fromJson(company))
        .toList();

    return MovieDetailsModel(
      company: companies,
      isAdult: json['adult'],
      tagline: json['tagline'],
    );
  }
}