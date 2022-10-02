part of 'home_cubit.dart';

class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class Success extends HomeState {
  final ListEvent listEvent;

  Success(this.listEvent);
  @override
  List<Object?> get props => [listEvent];
}

class FavoriteSuccess extends HomeState {
  final int favoriteId;

  FavoriteSuccess(this.favoriteId);
  @override
  List<Object?> get props => [favoriteId];
}

class FavoriteRead extends HomeState {
  final int favoriteId;

  FavoriteRead(this.favoriteId);
  @override
  List<Object?> get props => [favoriteId];
}

class Failed extends HomeState {
  final String failed;

  Failed(this.failed);
  @override
  List<Object?> get props => [failed];
}
