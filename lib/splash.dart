import 'package:flutter/material.dart';
import 'package:untitled4/toters.dart';
class splash extends StatefulWidget {

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async{await Future.delayed(Duration(seconds: 2));
  Navigator.push(context, MaterialPageRoute(builder: (context)=> mypage()));
  }
  @override
  void initStat(){
    super.initState();
    Delay();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04b493),
      body:  Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container( width: 350, height: 350,
                child: Image.asset('images/img_1.png'))
          ],
        ),
      ),
    );
  }
}
