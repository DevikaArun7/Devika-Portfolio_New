
import 'package:flutter/material.dart';
import '../../Core/Constants/app_colors.dart';
import '../../Data/projects.dart';
import '../../Models/project_model.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final isMobile = width < 700;

        return Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 22 : 40,
                vertical: 70,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _SectionHeading(),
                  const SizedBox(height: 38),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: ProjectsData.projects.length,
                    gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: isMobile ? 1 : 2,
                      crossAxisSpacing: 22,
                      mainAxisSpacing: 22,
                      mainAxisExtent: isMobile ? 440 : 400,
                    ),
                    itemBuilder: (context, index) {
                      return _ProjectCard(
                        project: ProjectsData.projects[index],
                      );
                    },
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

class _SectionHeading extends StatelessWidget {
  const _SectionHeading();

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 600;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'MY RECENT WORK',
          style: TextStyle(
            color: AppColors.cyan,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Selected Projects',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontSize: isMobile ? 30 : 38,
              ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Some applications I have designed and developed using Flutter.',
          style: TextStyle(
            color: AppColors.muted,
            fontSize: 15,
            height: 1.7,
          ),
        ),
      ],
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final ProjectModel project;

  const _ProjectCard({
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ProjectCover(project: project),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.subtitle,
                    style: TextStyle(
                      color: project.color,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    project.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    project.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.muted,
                      fontSize: 12,
                      height: 1.5,
                    ),
                  ),
                  const Spacer(),
                  Wrap(
                    spacing: 7,
                    runSpacing: 7,
                    children: project.technologies.map((technology) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 9,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: project.color.withValues(alpha: 0.10),
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: project.color.withValues(alpha: 0.22),
                          ),
                        ),
                        child: Text(
                          technology,
                          style: TextStyle(
                            color: project.color,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProjectCover extends StatelessWidget {
  final ProjectModel project;

  const _ProjectCover({
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            project.color.withValues(alpha: 0.24),
            AppColors.surface,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -45,
            right: -20,
            child: Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: project.color.withValues(alpha: 0.13),
                  width: 25,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 15,
            child: Text(
              project.number,
              style: TextStyle(
                color: project.color.withValues(alpha: 0.35),
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                color: project.color.withValues(alpha: 0.16),
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: project.color.withValues(alpha: 0.35),
                ),
              ),
              child: Icon(
                project.icon,
                color: project.color,
                size: 39,
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 15,
            child: Icon(
              Icons.arrow_outward_rounded,
              color: project.color,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
