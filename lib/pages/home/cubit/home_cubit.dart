import 'package:bloc/bloc.dart';
import 'package:digital_14_puspharaj/packages/search_repo/models/listevent.dart';
import 'package:digital_14_puspharaj/packages/search_repo/search_repository.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.searchRepository) : super(HomeInitial());

  SearchRepository searchRepository;
  Future listEvent(int pageNo) async {
    try {
      ListEvent list = await searchRepository.fetchItems(pageNo);
      emit(Success(list));
    } catch (e) {
      emit(Failed(e.toString()));
    }
  }

  Future searchEvent(String query) async {
    try {
      ListEvent list = await searchRepository.searchItems(query);
      emit(Success(list));
    } catch (e) {
      emit(Failed(e.toString()));
    }
  }

  Future favorite(int favoriteId) async {
    try {
      int favorite = await searchRepository.storeFavorite(favoriteId);
      emit(FavoriteSuccess(favorite));
    } catch (e) {
      emit(Failed('Cannot mark it as Favorite'));
    }
  }

  Future readFavorite() async {
    try {
      int favorite = await searchRepository.readFavorite();
      emit(FavoriteSuccess(favorite));
    } catch (e) {
      emit(Failed('Cannot read a Favorite'));
    }
  }
}
