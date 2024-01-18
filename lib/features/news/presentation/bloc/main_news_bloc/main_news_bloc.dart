import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:my_app/features/news/domain/entity/news_entity.dart';
import 'package:my_app/features/news/domain/usecase/get_recent_news_usecase.dart';

part 'main_news_event.dart';
part 'main_news_state.dart';

@Injectable()
class MainNewsBloc extends Bloc<MainNewsEvent, MainNewsState> {
  final GetRecentNewsUseCase _getRecentNewsUseCase;
  MainNewsBloc(this._getRecentNewsUseCase) : super(MainNewsInitialState()) {
    on<MainNewsGetRecentNewsEvent>(mainNewsGetRecentNewsEvent);
  }

  FutureOr<void> mainNewsGetRecentNewsEvent(
      MainNewsGetRecentNewsEvent event, Emitter<MainNewsState> emit) async {
    try {
      emit(MainNewsLoadingState());
      List<NewsEntity> news = await _getRecentNewsUseCase.execute();
      emit(MainNewsGetRecentNewsSuccessState(news));
    } catch (e) {
      emit(MainNewsErrorState("Something Went Wrong"));
    }
  }
}
