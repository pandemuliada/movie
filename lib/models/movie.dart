class Movie {
  final String title;
  final String genre;
  final String plot;
  final String poster;
  final String rating;

  Movie({this.title, this.genre, this.plot, this.poster, this.rating});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['Title'],
      genre: json['Genre'],
      plot: json['Plot'],
    );
  }
}
