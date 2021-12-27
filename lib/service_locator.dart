import 'package:fltrello/ui/navigation/app_navigation.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupContainer(){
  sl.registerLazySingleton<AppNavigator>(() => AppNavigator());
}