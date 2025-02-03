import 'package:booklyapp/core/utils/api_servies.dart';
import 'package:booklyapp/features/home/data/repos/home_reop_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServies>(ApiServies(dio: Dio()));
  getIt.registerSingleton<HomeReopImpl>(HomeReopImpl(getIt.get<ApiServies>()));
}
