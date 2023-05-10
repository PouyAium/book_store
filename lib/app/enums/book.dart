enum Book {
  about,
  author,
  reviews,
}

extension Capital on Book {
  String toUpperCase() => name.replaceRange(0, 1, name.substring(0, 1).toUpperCase());
}
