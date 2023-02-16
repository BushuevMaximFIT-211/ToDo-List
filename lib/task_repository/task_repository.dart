abstract class TaskRepository
{
  Future<void> getTasks();

  Future<void> saveTasks(Iterable<String> arrayTask);
}