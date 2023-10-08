import 'package:projeto_001/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}