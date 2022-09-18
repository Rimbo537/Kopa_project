import 'package:copa_example/core/data/services/base_repository.dart';
import 'package:copa_example/src/domain/models/user_model.dart';

abstract class AuthRepository extends BaseRepository{
  Future<void> createUser(UserModel user);
}