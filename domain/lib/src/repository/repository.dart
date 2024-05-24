///  Example
///  interface class repository
///
abstract class IUserAuthRepository {

  Future<void> getTodo();

  Future<void> addTodo();

  Future<void> removeTodo();
}