import 'task_repository.dart';

abstract class TaskRepositoryImpl implements TaskRepository
{
  Future<void> getTasks();

  Future<void> saveTasks(Iterable<String> arrayTask);
}