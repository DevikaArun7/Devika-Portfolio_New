
import 'package:flutter/material.dart';
import '../../Core/Constants/app_colors.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onExploreTap;
  final VoidCallback onContactTap;

  const HeroSection({
    super.key,
    required this.onExploreTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 700;

        return Container(
          width: double.infinity,
          constraints: const BoxConstraints(minHeight: 600),
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 24 : 80,
            vertical: 65,
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: isMobile
                  ? Column(
                      children: [
                        _HeroContent(
                          onExploreTap: onExploreTap,
                          onContactTap: onContactTap,
                        ),
                        const SizedBox(height: 40),
                        const _ProfileVisual(),
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: _HeroContent(
                            onExploreTap: onExploreTap,
                            onContactTap: onContactTap,
                          ),
                        ),
                        const Expanded(
                          flex: 5,
                          child: _ProfileVisual(),
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}

class _HeroContent extends StatelessWidget {
  final VoidCallback onExploreTap;
  final VoidCallback onContactTap;

  const _HeroContent({
    required this.onExploreTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 9,
          ),
          decoration: BoxDecoration(
            color: AppColors.purple.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: AppColors.purple.withValues(alpha: 0.3),
            ),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.circle,
                color: AppColors.cyan,
                size: 9,
              ),
              SizedBox(width: 9),
              Text(
                'AVAILABLE FOR OPPORTUNITIES',
                style: TextStyle(
                  color: AppColors.purple,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 28),

        const Text(
          "Hello, I'm",
          style: TextStyle(
            color: AppColors.muted,
            fontSize: 22,
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          'Devika Arun.',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 54,
            fontWeight: FontWeight.w800,
            letterSpacing: -2,
          ),
        ),

        const SizedBox(height: 10),

        ShaderMask(
          shaderCallback: (bounds) =>
              AppColors.gradient.createShader(bounds),
          child: const Text(
            'Flutter Developer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 31,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 22),

        const Text(
          'I build beautiful, responsive and user-friendly '
          'mobile applications using Flutter and Dart. '
          'Passionate about creating smooth experiences '
          'and solving real-world problems through technology.',
          style: TextStyle(
            color: AppColors.muted,
            fontSize: 16,
            height: 1.8,
          ),
        ),

        const SizedBox(height: 30),

        Wrap(
          spacing: 14,
          runSpacing: 14,
          children: [
            ElevatedButton.icon(
              onPressed: onExploreTap,
              icon: const Icon(Icons.arrow_forward_rounded),
              label: const Text('Explore My Work'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.purple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 18,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            OutlinedButton.icon(
              onPressed: onContactTap,
              icon: const Icon(Icons.mail_outline_rounded),
              label: const Text('Contact Me'),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.white,
                side: const BorderSide(
                  color: AppColors.border,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 18,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 35),

        const Wrap(
          spacing: 30,
          runSpacing: 15,
          children: [
            _HeroStat(
              number: '1+',
              label: 'Years Experience',
            ),
            _HeroStat(
              number: '4+',
              label: 'Projects Built',
            ),
          ],
        ),
      ],
    );
  }
}

class _HeroStat extends StatelessWidget {
  final String number;
  final String label;

  const _HeroStat({
    required this.number,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: AppColors.muted,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}

class _ProfileVisual extends StatelessWidget {
  const _ProfileVisual();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 390),
        child: AspectRatio(
          aspectRatio: 1,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 290,
                height: 290,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.purple.withValues(alpha: 0.10),
                ),
              ),

              Container(
                width: 250,
                height: 250,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: AppColors.gradient,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.purple.withValues(alpha: 0.25),
                      blurRadius: 40,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    'Assets/Images/profile.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    errorBuilder: (context, error, stackTrace) {
                      return const ColoredBox(
                        color: AppColors.card,
                        child: Icon(
                          Icons.person,
                          color: AppColors.purple,
                          size: 100,
                        ),
                      );
                    },
                  ),
                ),
              ),

              const Positioned(
                top: 35,
                right: 10,
                child: _FloatingTag(
                  icon: Icons.code_rounded,
                  label: 'Flutter',
                ),
              ),

              const Positioned(
                bottom: 45,
                left: 0,
                child: _FloatingTag(
                  icon: Icons.phone_android_rounded,
                  label: 'Mobile Apps',
                ),
              ),

              const Positioned(
                bottom: 15,
                right: 5,
                child: _FloatingTag(
                  icon: Icons.auto_awesome_rounded,
                  label: 'Creative UI',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FloatingTag extends StatelessWidget {
  final IconData icon;
  final String label;

  const _FloatingTag({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.border,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: AppColors.purple,
            size: 17,
          ),
          const SizedBox(width: 7),
          Text(
            label,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
