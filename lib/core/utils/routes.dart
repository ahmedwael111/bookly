import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:booklyapp/core/utils/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repos/home_reop_impl.dart';
import 'package:booklyapp/features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/book_deitails_view.dart';
import 'package:booklyapp/features/home/presentation/views/home_view.dart';
import 'package:booklyapp/features/search/presentation/views/search_view.dart';
import 'package:booklyapp/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kHomeView = '/home_view';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/BookSearchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilerBooksCubit(getIt.get<HomeReopImpl>()),
        child:  BookDeitailsView(bookModel: state.extra as BookModel,),
      ),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}

// final _router = GoRouter(
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => HomeScreen(),
//     ),
//   ],
// );
