import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
              title: '나도 오늘부터 갓생산다',
              body: 'This is the first page'
                  'We are making on-boarding screens'
                  'It is very interesting',
            image: Image.asset('assets/android12splash.png'),
            decoration: getPageDecoration()
        ),
        PageViewModel(
            title: 'welcome to my app',
            body: 'This is the first page'
                'We are making on-boarding screens'
                'It is very interesting',
            image: Image.asset('assets/android12splash.png'),
            decoration: getPageDecoration()
        ),
        PageViewModel(
            title: 'welcome to my app',
            body: 'This is the first page'
                'We are making on-boarding screens'
                'It is very interesting',
            image: Image.asset('assets/android12splash.png'),
            decoration: getPageDecoration()
        )
      ],
      done: const Text('done'),
      onDone: () {
        // onPressed 버튼과 유사
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => const MyHomePage()));
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
          color: Colors.grey,
          size: const Size(10, 10),
          activeSize: const Size(22, 10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24)
          ),
          activeColor: Colors.green // 활성된 점의 색상
      ),
      curve: Curves.bounceOut, // 애니메이션 효과 적용하기
    );
  }
  PageDecoration getPageDecoration() {
    //클래스에 관련된 내용 만을 다루어야 함
    return const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.grey),
        imagePadding: EdgeInsets.only(top: 100),
        pageColor: Colors.white);
  }
}
