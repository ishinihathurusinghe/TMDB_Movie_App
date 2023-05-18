class Movie {
  String? posterPath;
  String? overview;
  int? id;
  String? title;
  String? backdropPath;

  Movie(
      {this.backdropPath, this.id, this.overview, this.posterPath, this.title});

  factory Movie.fromJson(Map<String, dynamic> map) {
    return Movie(
        backdropPath: map['backdrop_path'],
        id: map['id'],
        overview: map['overview'],
        posterPath: map['poster_path'],
        title: map['title']);
  }
}