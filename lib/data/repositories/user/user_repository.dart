import 'package:copa_example/core/data/services/base_repository.dart';
import 'package:copa_example/src/domain/models/user_model.dart';

abstract class UserRepository extends BaseRepository {

  /// === cо стримом показ данных юзера
  Stream<UserModel> streamUserData();

  /// === c фичей стримом показ данных юзера
  Future<UserModel> getUserData();

  /// === c фичей обновление данных юзера
  Future<void> updateUser(UserModel user);
//  Future<UserModel> setUserData(String userId);

}