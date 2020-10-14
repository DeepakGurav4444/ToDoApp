class Category {
  int id;
  String name;
  String discription;
  categoryMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id;
    mapping['name'] = name;
    mapping['discription'] = discription;
    return mapping;
  }
}
