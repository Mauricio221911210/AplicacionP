class Peliculas {
  List<Pelicula> items = new List();

  Peliculas();

  Peliculas.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
}

class Pelicula {
  String uniqueId;

  String originalTitle;
  String posterPath;
  bool video;
  double voteAverage;
  String overview;
  String releaseDate;
  String title;
  double popularity;
  int voteCount;
  String backdropPath;
  int id;
  List<int> genreIds;
  bool adult;
  String originalLanguage;

  Pelicula({
    this.originalTitle,
    this.posterPath,
    this.video,
    this.voteAverage,
    this.overview,
    this.releaseDate,
    this.title,
    this.popularity,
    this.voteCount,
    this.backdropPath,
    this.id,
    this.genreIds,
    this.adult,
    this.originalLanguage,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    originalTitle = json['original_title'];
    posterPath = json['poster_path'];
    video = json['video'];
    voteAverage = json['vote_average'] / 1;
    overview = json['overview'];
    releaseDate = json['release_date'];
    title = json['title'];
    popularity = json['popularity'] / 1;
    voteCount = json['vote_count'];
    backdropPath = json['backdrop_path'];
    id = json['id'];
    genreIds = json['genre_ids'].cast<int>();
    adult = json['adult'];
    originalLanguage = json['original_language'];
  }

  getPosterImg() {
    if (posterPath == null) {
      return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }

  getBackgroundImg() {
    if (posterPath == null) {
      return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }
  }
}
