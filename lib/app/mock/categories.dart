enum Categories {
  art,
  biology,
  romance,
  thriller,
  fiction,
  crime,
  movies,
  religious,
}

extension Capital on Categories {
  String toUpperCase() => name.replaceRange(
        0,
        1,
        name.substring(0, 1).toUpperCase(),
      );
}
