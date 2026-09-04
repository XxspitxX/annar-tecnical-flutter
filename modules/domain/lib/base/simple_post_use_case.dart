import 'package:domain/base/repository.dart';

mixin SimplePostRepository<R, T> on Repository {
  Future<T?> post(R request, [Map? args]);
}

mixin SimplePostUseCase<R, T> {
  Future<T?> post(R request, [Map? args]);
}

mixin SimplePostUseCaseAdapter<R, T> implements SimplePostUseCase<R, T> {
  Repository get repository;

  @override
  Future<T?> post(R request, [Map? args]) {
    return (repository as SimplePostRepository<R, T>).post(request, args);
  }
}
