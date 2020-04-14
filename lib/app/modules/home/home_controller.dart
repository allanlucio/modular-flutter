import 'package:flutter_modular_class/app/modules/home/models/pokemon_model.dart';
import 'package:flutter_modular_class/app/modules/home/repositories/poke_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';
class HomeController = _HomeController with _$HomeController;
abstract class _HomeController with Store{
  final PokeRepository repository;
  
  @observable
  ObservableFuture<List<PokemonModel>> pokemons;

  _HomeController(this.repository){
    fetchPokemons();
  }

  @action
  fetchPokemons(){
    pokemons = repository.getAllPokemons().asObservable();
  }

}