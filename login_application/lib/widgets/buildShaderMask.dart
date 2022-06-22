import 'package:flutter/material.dart';

class BuildShaderMask extends StatelessWidget {
  const BuildShaderMask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (incoming) {
        return const LinearGradient(
          colors: [Colors.black45, Colors.black45],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(incoming);
      },
      blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
            fit: BoxFit.fill,
            image: AssetImage("assets/images/finalBackground.png"),
          ),
        ),
      ),
    );
  }
}
