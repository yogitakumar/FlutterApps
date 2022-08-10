import 'package:get_it/get_it.dart';
import 'package:providerdemo/core/services/api.dart';
import 'package:providerdemo/core/services/authentication_service.dart';
import 'package:providerdemo/core/viewmodels/comments_model.dart';
import 'package:providerdemo/core/viewmodels/home_model.dart';

import 'core/viewmodels/login_model.dart';

GetIt locator = GetIt.instance;    //GetIt();  GetIt doesn't have default constructor so using instance property;

void setUpLocator(){
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => Api());

  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => HomeModel());
  locator.registerFactory(() => CommentsModel());
}