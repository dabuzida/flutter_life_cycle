import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AAA extends StatefulWidget {
  const AAA({Key? key}) : super(key: key);

  @override
  State<AAA> createState() {
    _AAAState newObj = _AAAState();
    print('>> ${newObj.name}');
    newObj.name = 'flutter test';
    print('1 >> ${newObj.name}');
    return newObj;
  }
}

class _AAAState extends State<AAA> {
  String? name;

  @override
  void initState() {
    super.initState(); // 나의 코드 구현 전에 써야함? << 라이프사이클 별 확인필요
    name = 'flutter test2';
    print('2 >> $name');
  }

  @override
  void didChangeDependencies() {
    // Provider를 여기서 호출하니 이 함수가 2번 호출된적이 있음
    name = 'flutter test3';
    print('3 >> $name');
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

  @override
  Widget build(BuildContext context) {
    print('4 >> $name');

    return Center(child: Text(name!));
  }
}
