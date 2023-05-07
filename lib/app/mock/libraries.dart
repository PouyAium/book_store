import 'package:book_store/app/gen/assets.gen.dart';
import 'package:book_store/app/models/library.dart';

// Libraries Mockup
List<Library> libraries = [
  Library(imageUrl: Assets.images.juliaAlvarez.path, name: 'After Life', percent: 100),
  Library(imageUrl: Assets.images.ghostBoy.path, name: 'Ghost Boy', percent: 60),
  Library(imageUrl: Assets.images.goodCompany.path, name: 'Good Company', percent: 30),
  Library(imageUrl: Assets.images.goodCompany.path, name: 'Good Company', percent: 35),
  const Library(imageUrl: '+', name: 'Discover More', percent: 0),
];
