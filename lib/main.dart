import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/api_servies.dart';
import 'package:booklyapp/core/utils/routes.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:booklyapp/features/home/data/repos/home_reop_impl.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:booklyapp/features/home/presentation/manager/Newest_books_cubit/newest_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/manager/featutred_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/features/splash/presentation/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeReopImpl>())
            ..fetchFteaturedBooks(),
          //  ..  named 'Speed opretor'
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeReopImpl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
