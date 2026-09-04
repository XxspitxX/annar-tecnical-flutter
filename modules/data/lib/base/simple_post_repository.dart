import 'package:data/base/api_source.dart';
import 'package:domain/base/simple_post_use_case.dart';

mixin SimplePostRepositoryAdapter<R, T> implements SimplePostRepository<R, T> {
  ApiSource get apiSource;

  @override
  Future<T?> post(R request, [Map? args]) {
    return (apiSource as PostApiSource<R, T>).post(request, args);
  }
}
