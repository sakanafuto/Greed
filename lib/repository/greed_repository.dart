import 'package:hello_app/model/greed.dart';
import 'package:hello_app/model/boxes.dart';

class GreedRepository {
  Future addGreedRepository(String name, int price, String description) async {
    final greed = Greed(name: name, price: price, description: description);
    final box = Boxes.getGreeds();
    box.add(greed);
  }
}
