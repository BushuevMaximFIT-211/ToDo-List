
import 'task_repository.dart';

abstract class TaskRepositoryImpl implements TaskRepository
{
  @override
  Future<void> getTasks();
  static List<String> getTasksDefault()
  {
    return <String>['First task', 'Second Task', 'Third Task'];
  }
  @override
  Future<void> saveTasks(Iterable<String> arrayTask);
}