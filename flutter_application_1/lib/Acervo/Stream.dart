import 'package:dio/dio.dart';
import 'ClassPoster.dart';

//global list
List<Poster> poster = [];

Stream<List<Poster>> getInfoMovie() async* {
  final _codeMovie = [
    '436270',
    '76600',
    '736526',
    '505642',
    '315162',
    '361743',
    '899112',
    '675353',
    '982620',
    '550',
    '966220'
  ];
  poster.clear();

  final dio = Dio();
  const token = '127daaec0c09ab44dff0ed55219f1591&language=pt-BR';

  for (int i = 0; i < _codeMovie.length; i++) {
    final repository = await dio.get(
        'https://api.themoviedb.org/3/movie/${_codeMovie[i]}?api_key=$token');

    final uri =
        'https://image.tmdb.org/t/p/w500${repository.data['poster_path']}';

    if (repository.statusCode == 200) {
      poster.add(Poster(
          title: repository.data['title'],
          image: uri,
          popular: repository.data["popularity"],
          overview: repository.data["overview"]));
    } else {
      throw Exception('Falha ao carregar dados...');
    }
  }
}
