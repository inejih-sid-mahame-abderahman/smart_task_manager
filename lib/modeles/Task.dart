class Task {
  final String id; // unique id
  String title; // اسم المهمة
  String categoryId; // id الفئة
  int priority; // 1 = منخفض, 2 = متوسط, 3 = عالي
  DateTime dueDate; // تاريخ الاستحقاق
  bool isDone; // حالة المهمة (تم/لم يتم)
  String? comment; // تعليقات اختيارية

  Task({
    required this.id,
    required this.title,
    required this.categoryId,
    required this.priority,
    required this.dueDate,
    this.isDone = false,
    this.comment,
  });
}
