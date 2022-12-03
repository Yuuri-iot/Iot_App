import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iot/provider/user.dart';
import 'package:iot/screens/bottombar/bottom.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyAPp());
}

class MyAPp extends StatelessWidget {
  const MyAPp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Emphaisis>(
          create: (_) => Emphaisis(),
        ),
      ],
      child: ScreenUtilInit(
        //screenutil 라이브러리 (뒤에 .h, .w, .r, .sp등등 크기를 반응형으로 만들어줌)
        designSize: const Size(390, 844), // 어떤 사이즈를 기준으로 만들것인가
        builder: (BuildContext context, Widget? child) => const MaterialApp(
            title: 'Welcome',
            debugShowCheckedModeBanner: false,
            home: Bottom() // widget/bottombar.dart 코드
            ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Bottom()));
                },
                child: const Text("대충 로그인"))
          ],
        ),
      ),
    );
  }
}
