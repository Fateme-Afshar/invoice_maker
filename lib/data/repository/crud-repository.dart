
abstract class IRepository<T> {
  Future<void> insert(T obj);

  Future<void> delete(T obj);

  Future<void> update(T obj);

  T? get(String key);

  Iterable<T> getList();
}
