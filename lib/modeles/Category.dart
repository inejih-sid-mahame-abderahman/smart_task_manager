class Category {
  final String id;
  String name; // اسم الفئة
  String colorHex; // لون الفئة
  List<String> taskIds; // قائمة المهام المرتبطة

  Category({
    required this.id,
    required this.name,
    required this.colorHex,
    this.taskIds = const [],
  });
}
