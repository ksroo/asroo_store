import 'package:asroo_store/core/service/hive/hive_database.dart';
import 'package:asroo_store/features/customer/favorites/data/models/favorites_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_state.dart';
part 'favorites_cubit.freezed.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(const FavoritesState.initial());

  Future<void> manageFavourites({
    required String productId,
    required String title,
    required String image,
    required String price,
    required String categoryName,
  }) async {
    emit(const FavoritesState.initial());
    final existingIndex = HiveDatabase()
        .favoritesBox!
        .values
        .toList()
        .indexWhere((e) => e.id == productId);

    if (existingIndex >= 0) {
      await HiveDatabase().favoritesBox!.deleteAt(existingIndex);
    } else {
      await HiveDatabase().favoritesBox!.add(
            FavoritesModel(
              id: productId,
              title: title,
              image: image,
              price: price,
              categoryName: categoryName,
            ),
          );
    }
    emit(const FavoritesState.addAndRemoveFavorites());
  }

  bool isFavorites(String productId) {
    return HiveDatabase()
        .favoritesBox!
        .values
        .toList()
        .any((e) => e.id == productId);
  }

  List<FavoritesModel> get favoritesLis {
    return HiveDatabase().favoritesBox!.values.toList();
  }
}
