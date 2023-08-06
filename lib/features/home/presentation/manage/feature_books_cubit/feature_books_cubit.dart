import 'package:book/features/home/data/repos/home_repo.dart';
import 'package:book/features/home/presentation/manage/feature_books_cubit/feature_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRpo) : super(FeatureBooksInitial());

  final HomeRpo homeRpo;

  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRpo.fetchFeatureBooks();

    result.fold((failure) {
      emit(FeatureBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeatureBooksSuccess(books));
    });
  }
}
