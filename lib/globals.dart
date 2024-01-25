library freshh.globals;

import 'package:freshh/features/auth/utils/auth_utils.dart';
import 'package:freshh/models/user/user_model.dart';


UserModel? user;
fetchUser({Function? callback}) {
  Authentication().getUser().then((value) {
    user = value;
    if(callback !=null)  callback();

  });
}