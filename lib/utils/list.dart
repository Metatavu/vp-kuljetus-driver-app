extension Unique<Element, Id> on List<Element> {
  /// Preserve unique elements on the list based on their identity or a
  /// provided [getId] function.
  List<Element> unique([final Id Function(Element element)? getId]) {
    final ids = <Id>{};
    retainWhere((final x) => ids.add(getId != null ? getId(x) : x as Id));
    return this;
  }

  /// Returns a new list with unique elements based on their identity or a
  /// provided [getId] function.
  List<Element> toUnique([final Id Function(Element element)? getId]) {
    final ids = <Id>{};
    final list = List<Element>.from(this);
    list.retainWhere((final x) => ids.add(getId != null ? getId(x) : x as Id));
    return list;
  }
}
