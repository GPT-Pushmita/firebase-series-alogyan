import 'package:cloud_firestore/cloud_firestore.dart';

class TaskModel {
  String id;
  String title;
  String description;
  DateTime taskDate;
  bool isCompleted;
  bool isDeleted;
  DateTime createdAt;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
    required this.taskDate,
    required this.createdAt,
    this.isCompleted = false,
    this.isDeleted = false,
  });

  // Retrieves data from Firestore and converts it to a TaskModel
  factory TaskModel.fromMap(Map<String, dynamic> map, {String? documentId}) {
    return TaskModel(
      // Use the provided documentId if available, otherwise fall back to the map
      id: documentId ?? map['id'] ?? '',
      title: map['title'] ?? 'Not Found',
      description: map['description'] ?? '',

      // Safely convert Firestore Timestamps back to Dart DateTime objects
      taskDate: map['taskDate'] is Timestamp
          ? (map['taskDate'] as Timestamp).toDate()
          : DateTime.now(),

      createdAt: map['createdAt'] is Timestamp
          ? (map['createdAt'] as Timestamp).toDate()
          : DateTime.now(),

      isCompleted: map['isCompleted'] ?? false,
    );
  }

  // Converts the TaskModel into a Map to be saved in Firestore
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      // The Firestore SDK automatically converts Dart DateTime objects into Timestamps
      'taskDate': taskDate,
      'createdAt': createdAt,
      'isCompleted': isCompleted,
    };
  }
}
