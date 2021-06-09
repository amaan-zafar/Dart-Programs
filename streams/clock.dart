main() async {
  Duration dur = Duration(seconds: 1);
  Stream<String> stream = Stream<String>.periodic(dur, callback);
  // // Method 1
  // await for (String s in stream) {
  //   print(s);
  // }

  // // Method 2
  // stream.forEach((element) {
  //   print(element);
  // });

  // Method 3
  stream.listen((event) {
    print(event);
  });

  return 0;
}

String callback(value) {
  DateTime _now = DateTime.now();
  return 'Current timestamp: ${_now.hour}:${_now.minute}:${_now.second}.${_now.millisecond}';
}
