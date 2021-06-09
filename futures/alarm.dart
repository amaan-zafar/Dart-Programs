import 'dart:io';

main() async {
  print('Enter hours:');
  int hrs = int.parse(stdin.readLineSync()!);
  print('Enter minutes:');
  int min = int.parse(stdin.readLineSync()!);
  DateTime _now = DateTime.now();
  DateTime alarmTime = DateTime(_now.year, _now.month, _now.day, hrs, min);
  int secondsLeft = (alarmTime.hour * 60 * 60 + alarmTime.minute * 60) -
      (_now.hour * 60 * 60 + _now.minute * 60 + _now.second);
  Future.delayed(Duration(
    seconds: secondsLeft,
  )).then((value) {
    print('Alarm Ringing!!!');
  });

  return 0;
}
