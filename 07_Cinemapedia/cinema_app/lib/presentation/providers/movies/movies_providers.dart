//Importaciones Flutter
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Importaciones nuestras
import 'package:cinema_app/domain/entities/movie.dart';
import 'package:cinema_app/presentation/providers/movies/movies_repository_provider.dart';

//Definimos el tipo de función que espero con "Typedef"
typedef MovieCallBack = Future<List<Movie>> Function({int page});

//Creamos una clase que nos permita a nostros la reutilización
class MoviesNotifier extends StateNotifier<List<Movie>> {
  //Propiedades de la clase
  int currentPage = 0; //Conocer la pagina actual
  //Llamamos la función que creamos "Typedef"
  MovieCallBack fetchMoreMovies;

  //Constructor
  MoviesNotifier({
    required this.fetchMoreMovies,
  }) : super([]);

  //Creamos un metodo
  Future<void> laodNextPage() async {
    //El Objetivo de este metodo es hacerle una modificación al State ( El listado de movie)
    currentPage++; //Incrementamos en uno nuestro currentPage (Pagina actual)

    //Utilizamos nuestra función
    final List<Movie> movies = await fetchMoreMovies(page: currentPage);

    //Regresamos un nuevo State - Mandamos todas las "Películas que nosotros queremos agregar"
    state = [...state, ...movies];
  }
}

//?Si yo quiero saber cuales son las películas que están ahora en el cine puedo consultar al provider(nowPlayingMoviesProvider) para ver la información
final nowPlayingMoviesProvider =
    StateNotifierProvider<MoviesNotifier, List<Movie>>((ref) {
  //Propiedades
  final fetchMoreMovies = ref.watch(movieRepositoryProvider).getNoPlaying;

  //Retornamos nuestra clase
  return MoviesNotifier(
      //proporcionar la función
      fetchMoreMovies: fetchMoreMovies);
});