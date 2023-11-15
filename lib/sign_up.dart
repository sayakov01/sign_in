
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundSignUp(),
        child:  const Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class BackgroundSignUp extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();
    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));
    paint.color = Colors.grey.shade100;
    canvas.drawPath(mainBackground, paint);

    Path yellowWave = Path();
    yellowWave.lineTo(sw, 0);
    yellowWave.lineTo(sw, sh * 0.65);
    yellowWave.cubicTo(sw*0.8, sh*0.8, sw*0.5, sh*0.8, sw*0.45, sh);
    yellowWave.lineTo(0, sh);
    yellowWave.close();
    paint.color = Colors.blue.shade200;
    canvas.drawPath(yellowWave, paint);

    Path greyWave = Path();
    greyWave.lineTo(sw, 0);
    greyWave.lineTo(sw, 0);
    greyWave.cubicTo(
        sw * 0.95, sh * 0.15, sw * 0.65, sh * 0.15, sw * 0.6, sh * 0.38);
    greyWave.cubicTo(sw * 0.52, sh * 0.52, 105, sh * 0.50, 0, sh * 0.4);
    greyWave.close();
    paint.color = Colors.blue.shade300;
    canvas.drawPath(greyWave, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
