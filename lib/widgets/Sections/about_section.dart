import 'package:flutter/material.dart';
import '../../Core/Constants/app_colors.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = MediaQuery.sizeOf(context).width < 700;

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1120),
        padding: EdgeInsets.symmetric(
          horizontal: mobile ? 24 : 60,
          vertical: 90,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'A LITTLE ABOUT ME',
              style: TextStyle(
                color: AppColors.cyan,
                fontSize: 11,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'Turning ideas into\nbeautiful applications.',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 38,
                height: 1.2,
                fontWeight: FontWeight.w800,
                letterSpacing: -1,
              ),
            ),
            const SizedBox(height: 30),
            if (mobile)
              const Column(
                children: [
                  _AboutText(),
                  SizedBox(height: 25),
                  _AboutHighlight(),
                ],
              )
            else
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 6, child: _AboutText()),
                  SizedBox(width: 50),
                  Expanded(flex: 4, child: _AboutHighlight()),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class _AboutText extends StatelessWidget {
  const _AboutText();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'I am a Flutter Developer with 1+ year of professional '
      'experience building mobile applications. I enjoy transforming '
      'ideas and designs into smooth, responsive user experiences.\n\n'
      'My work includes developing reusable UI components, integrating '
      'REST APIs, working with Firebase and implementing state '
      'management solutions. I enjoy exploring new technologies and '
      'building applications that solve practical problems.',
      style: TextStyle(color: AppColors.muted, fontSize: 15, height: 1.9),
    );
  }
}

class _AboutHighlight extends StatelessWidget {
  const _AboutHighlight();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF201B3C), AppColors.card],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.favorite_rounded, color: AppColors.purple, size: 27),
          SizedBox(height: 18),
          Text(
            'What I enjoy',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 17),
          _HighlightLine(text: 'Building clean mobile interfaces'),
          _HighlightLine(text: 'Solving real-world problems'),
          _HighlightLine(text: 'Learning modern technologies'),
          _HighlightLine(text: 'Writing reusable Flutter code'),
        ],
      ),
    );
  }
}

class _HighlightLine extends StatelessWidget {
  final String text;

  const _HighlightLine({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),
      child: Row(
        children: [
          const Icon(
            Icons.check_circle_rounded,
            color: AppColors.cyan,
            size: 17,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: AppColors.muted, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
