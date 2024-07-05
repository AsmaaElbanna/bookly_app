import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupServiceLocator() {
  /// register APIService
  getIt.registerSingleton<APIService>(APIService(Dio()));

  /// register HomeRepoImpl
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<APIService>()));
}
