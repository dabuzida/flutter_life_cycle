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

class BBB extends StatefulWidget {
  const BBB({Key? key}) : super(key: key);

  @override
  State<BBB> createState() {
    print('BBB - createState');
    _BBBState newObj = _BBBState();
    // print('>> ${newObj.name}');
    // newObj.name = 'flutter test';
    // print('1 >> ${newObj.name}');
    return newObj;
  }
}

class _BBBState extends State<BBB> {
  String? name;

  @override
  void initState() {
    print('BBB - initState');
    super.initState();
    name = 'flutter test2';
  }

  String x = 'BBB';
  @override
  Widget build(BuildContext context) {
    print('BBB - build');

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
    print('BBB - didChangeDependencies');
    name = 'flutter test3';
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    print('BBB - dispose');
    super.dispose();
  }

  @override
  void deactivate() {
    print('BBB - deactivate');
    super.deactivate();
  }

  @override
  void didUpdateWidget(covariant BBB oldWidget) {
    print('BBB - didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }
}
