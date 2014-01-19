import 'package:unittest/unittest.dart';
import 'package:d3/selection/selection.dart';

void main() {
  group('select(body)', () {
    group('on a simple page', () {
      Selection body = select('body');
      body.append('div').attr('class', 'first');
      body.append('div').attr('class', 'second');
      test('selects the first matching element', () {
        var div = body.select('div');
//        expect(div[0][0], same(body.node().firstChild));
        expect(div.length, equals(1));
//        expect(div[0].length, equals(1));
//        expect(div.attr('class'), equals('first'));
      });
    });
  });
}