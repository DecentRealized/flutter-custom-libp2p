import 'package:custom_libp2p/custom_libp2p.dart';
import 'package:test/test.dart';

void main() {
  test('Get Hello Message', () async {
    String userName = 'my user 123 @!';
    var response = await CustomLibP2P.getHelloMessage(userName);
    print(response);
    expect(response == 'Hello $userName this is a dummy function!', true);
  });
}
