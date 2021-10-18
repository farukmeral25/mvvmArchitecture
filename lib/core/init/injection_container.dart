import 'package:flutter_mvvm_project/service/service_impl.dart';
import 'package:flutter_mvvm_project/service/services.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.instance;
Future<void> init() async {
  serviceLocator.registerLazySingleton<Services>(() => ServiceImpl());
  //serviceLocator.registerLazySingleton<HomeProvider>(() => HomeProvider());
}
