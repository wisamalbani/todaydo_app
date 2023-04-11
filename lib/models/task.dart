class Task {
  final String name;
  bool IsDone;

  Task({required this.name, this.IsDone = false});

  void doneChange() {
    IsDone = !IsDone;
  }
}
