import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/features/news/presentation/bloc/main_news_bloc/main_news_bloc.dart';
import 'package:my_app/features/news/presentation/screens/main_news_screen/main_news_screen.dart';
import 'package:my_app/main.dart';

class AppRouter {
  final MainNewsBloc _newsBloc = getIt<MainNewsBloc>();

  GoRouter generateRoute() {
    return GoRouter(routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return BlocProvider.value(
            value: _newsBloc..add(MainNewsGetRecentNewsEvent()),
            child: const MainNewsScreen(),
          );
        },
      )
    ]);
  }
}
