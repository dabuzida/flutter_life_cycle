import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// createState() 실행 >>

// ' _MyStatefulWidgetState의 멤버변수 생성>> _MyStatefulWidgetState의 부모 State() >> _MyStatefulWidgetState() 생성'

// >>
// createState()가 _MyStatefulWidgetState() 반환

// >>

// initState() >> didChangeDependencies() >> build(): build 멤버변수 >> build return된것 실행

class AAA extends StatefulWidget {
  const AAA({Key? key}) : super(key: key);

  @override
  State<AAA> createState() {
    print('createState()');
    _AAAState newObj = _AAAState();
    // print('>> ${newObj.name}');
    // newObj.name = 'flutter test';
    // print('1 >> ${newObj.name}');
    return newObj;
  }
}

class _AAAState extends State<AAA> {
  String? name;
  final DateTime _dateTimeNow = DateTime.now();
  final int _unixTimeNow = DateTime.now().millisecondsSinceEpoch;
  final int _unixTimeSixDaysAgo = DateTime.now().add(const Duration(days: -6)).millisecondsSinceEpoch;
  final int _unixTimeTwentyNineDaysAgo = DateTime.now().add(const Duration(days: -29)).millisecondsSinceEpoch;

  @override
  void initState() {
    print('initState()');
    super.initState(); // 나의 코드 구현 전에 써야함? << 라이프사이클 별 확인필요
    name = 'flutter test2';
    // print('2 >> $name');
  }

  String x = 'sdfsdfds';
  @override
  Widget build(BuildContext context) {
    print('build()');
    // print('4 >> $name');

    return Center(
      child: TextButton(
        onPressed: () {
          x += '333';
          setState(() {});
        },
        child: Text(x),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies()');
    // Provider를 여기서 호출하니 이 함수가 2번 호출된적이 있음
    name = 'flutter test3';
    // print('3 >> $name');
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('dispse()');
    super.dispose();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print('deactivate()');
    super.deactivate();
  }

  @override
  void didUpdateWidget(covariant AAA oldWidget) {
    // TODO: implement didUpdateWidget
    print('didUpdateWidget()');

    super.didUpdateWidget(oldWidget);
  }
}
