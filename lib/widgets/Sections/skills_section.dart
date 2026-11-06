
import 'package:flutter/material.dart';
import '../../Core/Constants/app_colors.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  static const List<_SkillCategory> categories = [
    _SkillCategory(
      title: 'Mobile App Development',
      subtitle: 'Building cross-platform applications',
      icon: Icons.phone_android_rounded,
      color: Color(0xFF9875FF),
      skills: [
        'Flutter',
        'Dart',
        'Responsive UI',
        'Reusable Widgets',
        'Material Design',
        'Navigation',
        'UI Development',
      ],
    ),
    _SkillCategory(
      title: 'State Management',
      subtitle: 'Managing application state',
      icon: Icons.account_tree_rounded,
      color: Color(0xFF5C9DFF),
      skills: [
        'Provider',
        'Riverpod',
        'BLoC',
        'ChangeNotifier',
        'Reactive State Management',
      ],
    ),
    _SkillCategory(
      title: 'Backend & Database',
      subtitle: 'Authentication and data storage',
      icon: Icons.storage_rounded,
      color: Color(0xFF5DE2E7),
      skills: [
        'Firebase',
        'Firebase Authentication',
        'Cloud Firestore',
        'Hive',
        'Local Storage',
        'CRUD Operations',
      ],
    ),
    _SkillCategory(
      title: 'API Integration',
      subtitle: 'Connecting applications with services',
      icon: Icons.api_rounded,
      color: Color(0xFFFFB86B),
      skills: [
        'REST API',
        'HTTP',
        'JSON Parsing',
        'GET',
        'POST',
        'DELETE',
        'API Integration',
        'Error Handling',
      ],
    ),
    _SkillCategory(
      title: 'Maps & Location',
      subtitle: 'Location-based application features',
      icon: Icons.location_on_rounded,
      color: Color(0xFF9875FF),
      skills: [
        'OpenStreetMap',
        'OSRM',
        'Photon Geocoding',
        'Geolocator',
        'Route Calculation',
        'Location Tracking',
      ],
    ),
    _SkillCategory(
      title: 'Payment Integration',
      subtitle: 'Payment gateway integration',
      icon: Icons.payment_rounded,
      color: Color(0xFF5C9DFF),
      skills: [
        'Razorpay',
        'Payment Gateway Integration',
        'Test Mode Integration',
      ],
    ),
    _SkillCategory(
      title: 'Tools & Design',
      subtitle: 'Development and collaboration tools',
      icon: Icons.design_services_rounded,
      color: Color(0xFFFFB86B),
      skills: [
        'Git',
        'GitHub',
        'Figma',
        'VS Code',
        'Android Studio',
      ],
    ),
    _SkillCategory(
      title: 'App Deployment',
      subtitle: 'Preparing applications for release',
      icon: Icons.rocket_launch_rounded,
      color: Color(0xFF5DE2E7),
      skills: [
        'Google Play Console',
        'Play Store Publishing',
        'App Deployment',
        'Release Preparation',
        'App Signing',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 80,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'MY EXPERTISE',
                style: TextStyle(
                  color: AppColors.purple,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Skills & Technologies',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 14),
              const Text(
                'Technologies, tools and integrations I use '
                'to build modern Flutter applications.',
                style: TextStyle(
                  color: AppColors.muted,
                  fontSize: 15,
                  height: 1.7,
                ),
              ),
              const SizedBox(height: 38),

              LayoutBuilder(
                builder: (context, constraints) {
                  final width = constraints.maxWidth;

                  final columns = width >= 950
                      ? 3
                      : width >= 600
                          ? 2
                          : 1;

                  return GridView.builder(
                    shrinkWrap: true,
                    physics:
                        const NeverScrollableScrollPhysics(),
                    itemCount: categories.length,
                    gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columns,
                      crossAxisSpacing: 18,
                      mainAxisSpacing: 18,
                      mainAxisExtent: 260,
                    ),
                    itemBuilder: (context, index) {
                      return _SkillCard(
                        category: categories[index],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SkillCategory {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final List<String> skills;

  const _SkillCategory({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.skills,
  });
}

class _SkillCard extends StatelessWidget {
  final _SkillCategory category;

  const _SkillCard({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 43,
                height: 43,
                decoration: BoxDecoration(
                  color: category.color.withValues(alpha: 0.13),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  category.icon,
                  color: category.color,
                  size: 23,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  category.title,
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Text(
            category.subtitle,
            style: const TextStyle(
              color: AppColors.muted,
              fontSize: 12,
            ),
          ),

          const SizedBox(height: 17),

          Expanded(
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Wrap(
                spacing: 7,
                runSpacing: 9,
                children: category.skills.map((skill) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: category.color.withValues(alpha: 0.08),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: category.color.withValues(alpha: 0.20),
                      ),
                    ),
                    child: Text(
                      skill,
                      style: TextStyle(
                        color: category.color,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
