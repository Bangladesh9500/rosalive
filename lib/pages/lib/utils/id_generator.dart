import 'dart:math';

String generateUserId() {
  final random = Random();
  return (10000000 + random.nextInt(90000000)).toString();
}
