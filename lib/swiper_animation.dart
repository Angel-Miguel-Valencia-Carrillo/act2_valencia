import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class SwiperAnimation extends StatelessWidget {
  const SwiperAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: Swiper(
                itemCount: 6, // número de imágenes
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("images/img$index.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                layout: SwiperLayout.TINDER,
                itemWidth: 300, // ✅ requerido para TINDER layout
                itemHeight: 400,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Swiper Animation",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
