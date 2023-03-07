import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app/models/favorites.dart';

void main() {
  group('Testing App Provider', () {
    var favorites = Favorites();

    test('A new item should ba added', () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test('remove item test', () {
      var removeNumber = 45;

      favorites.add(removeNumber);
      expect(favorites.items.contains(removeNumber), true);
      favorites.remove(removeNumber);
      expect(favorites.items.contains(removeNumber), false);
    });
  });
}
