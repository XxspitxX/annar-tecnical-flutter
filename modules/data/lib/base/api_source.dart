mixin ApiSource {}

mixin GetApiSource<T> on ApiSource {
  Future<T?> get([Map? args]);
}

mixin PostApiSource<R, T> on ApiSource {
  Future<T> post(R request, [Map? args]);
}