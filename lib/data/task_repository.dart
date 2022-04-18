import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farm_web/presentation/model/task.dart';
import 'package:intl/intl.dart';

class TaskRepository {
  final _collection = FirebaseFirestore.instance.collection('task');

  Future<String> create({required Task task}) async {
    try {
      await _collection.add({
        'taskName': task.taskName,
        'responsible': task.responsible,
        'isCompleted': task.isCompleted,
        'taskDate': DateFormat('yyyy-MM-dd HH:mm:ss').format(task.taskDate),
      });
      return 'successfully';
    } catch (_) {
      return 'error';
    }
  }

  Future<List<Task>> read() async {
    final List<Task> _list = [];
    final collection = await _collection.get();
    for (var doc in collection.docs) {
      Task item = Task(
        id: doc.id,
        taskName: doc['taskName'],
        responsible: doc['responsible'],
        taskDate: DateFormat("yyyy-MM-dd HH:mm:ss").parse(doc['taskDate']),
        isCompleted: doc['isCompleted'],
      );
      _list.add(item);
    }
    return _list;
  }

  Future<void> update(Task task) async {
    await _collection.doc(task.id).update({
      'taskName': task.taskName,
      'responsible': task.responsible,
      'isCompleted': task.isCompleted,
      'taskDate': DateFormat('yyyy-MM-dd HH:mm:ss').format(task.taskDate),
    });
  }

  Future<void> delete(String id) async {
    await _collection.doc(id).delete();
  }
}
