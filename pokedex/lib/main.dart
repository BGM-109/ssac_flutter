import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/bloc/pokemon_bloc.dart';
import 'package:pokedex/bloc/pokemon_event.dart';
import 'package:pokedex/pokedex_view.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MultiBlocProvider(
        providers: [BlocProvider(create: (context) => PokemonBloc()..add(PokemonPageRequest(page: 0)))],
        child: PokedexView(),
      ),
    );
  }
}
