part of 'favorites_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.addAndRemoveFavorites() =
      AddAndRemoveFavoritesState;
}
