class User {
  final String id;
  String name; // اسم المستخدم
  String email; // البريد الإلكتروني
  List<String> taskIds; // المهام الخاصة بالمستخدم

  User({
    required this.id,
    required this.name,
    required this.email,
    this.taskIds = const [],
  });
}
