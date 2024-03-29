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
    print('AAA - createState');
    _AAAState newObj = _AAAState();
    // print('>> ${newObj.name}');
    // newObj.name = 'flutter test';
    // print('1 >> ${newObj.name}');
    return newObj;
  }
}

class _AAAState extends State<AAA> {
  String? name;

  @override
  void initState() {
    print('AAA - initState');
    super.initState();
    name = 'flutter test2';
  }

  String x = 'AAA';
  @override
  Widget build(BuildContext context) {
    print('AAA - build');
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
    print('AAA - didChangeDependencies');
    name = 'flutter test3';
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    print('AAA - dispose');
    super.dispose();
  }

  @override
  void deactivate() {
    print('AAA - deactivate');
    super.deactivate();
  }

  @override
  void didUpdateWidget(covariant AAA oldWidget) {
    print('AAA - didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }
}
