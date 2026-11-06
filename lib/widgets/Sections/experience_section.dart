import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = MediaQuery.sizeOf(context).width < 700;

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1120),
        padding: EdgeInsets.symmetric(
          horizontal: mobile ? 24 : 60,
          vertical: 85,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'MY JOURNEY',
              style: TextStyle(
                color: AppColors.cyan,
                fontSize: 11,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Experience & growth.',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 38,
                fontWeight: FontWeight.w800,
                letterSpacing: -1,
              ),
            ),
            const SizedBox(height: 42),
            const _ExperienceItem(
              number: '01',
              role: 'Flutter Developer',
              company: 'Novox Edtech',
              duration: '1+ Year',
              location: 'Calicut, Kerala',
              current: true,
              description:
                  'Developed and maintained Flutter applications for '
                  'real-world projects. Built responsive UI screens and '
                  'reusable widgets, integrated REST APIs, and worked on '
                  'service management, event management and farmer-buyer '
                  'connectivity applications. Collaborated with team '
                  'members to debug issues and improve application quality.',
            ),
            const SizedBox(height: 22),
            const _ExperienceItem(
              number: '02',
              role: 'Flutter Developer Trainee',
              company: 'TECHNOVEDHA',
              duration: '4 Months',
              location: 'Kerala',
              current: false,
              description:
                  'Worked with Flutter and Dart, developed reusable UI '
                  'components, implemented Firebase authentication and '
                  'data storage, explored Hive for offline persistence, '
                  'and practised state management and API integration '
                  'through mini projects.',
            ),
          ],
        ),
      ),
    );
  }
}

class _ExperienceItem extends StatelessWidget {
  final String number;
  final String role;
  final String company;
  final String duration;
  final String location;
  final String description;
  final bool current;

  const _ExperienceItem({
    required this.number,
    required this.role,
    required this.company,
    required this.duration,
    required this.location,
    required this.description,
    required this.current,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                number,
                style: const TextStyle(
                  color: AppColors.purple,
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              if (current)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.cyan.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'PROFESSIONAL EXPERIENCE',
                    style: TextStyle(
                      color: AppColors.cyan,
                      fontSize: 9,
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            role,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            company,
            style: const TextStyle(
              color: AppColors.purple,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 18,
            runSpacing: 8,
            children: [
              _detail(Icons.calendar_month_outlined, duration),
              _detail(Icons.location_on_outlined, location),
            ],
          ),
          const SizedBox(height: 18),
          Text(
            description,
            style: const TextStyle(
              color: AppColors.muted,
              height: 1.8,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _detail(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 15, color: AppColors.muted),
        const SizedBox(width: 6),
        Text(
          text,
          style: const TextStyle(color: AppColors.muted, fontSize: 12),
        ),
      ],
    );
  }
}
