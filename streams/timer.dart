import 'dart:io';

main() async {
  print("Enter seconds for timer");
  int seconds = int.parse(stdin.readLineSync()!);
  Duration dur = Duration(seconds: 1);
  Stream<int> stream = Stream<int>.periodic(dur, callback);
  stream = stream.take(seconds);
  await for (int i in stream) {
    print(seconds - i);
  }
  return 0;
}

int callback(value) {
  return value++;
}
