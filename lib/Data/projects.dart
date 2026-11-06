import 'package:flutter/material.dart';
import '../models/project_model.dart';

class ProjectsData {
  static const List<ProjectModel> projects = [
    ProjectModel(
      number: '01',
      name: 'AI Chat Assistant',
      subtitle: 'AI APPLICATION',
      description:
          'An AI-powered conversational application with a clean chat interface '
          'and integration-ready architecture.',
      technologies: ['Flutter', 'Dart', 'AI Integration'],
      icon: Icons.auto_awesome_rounded,
      color: Color(0xFF9875FF),
    ),
    ProjectModel(
      number: '02',
      name: 'ProductHub',
      subtitle: 'API & PRODUCT EXPLORER',
      description:
          'A product discovery application featuring API integration, '
          'search, product details and local data persistence.',
      technologies: ['Flutter', 'Provider', 'REST API', 'Hive'],
      icon: Icons.shopping_bag_rounded,
      color: Color(0xFF5C9DFF),
    ),
    ProjectModel(
      number: '03',
      name: 'Task Manager',
      subtitle: 'PRODUCTIVITY APPLICATION',
      description:
          'A task management application built with Riverpod for '
          'structured and reactive state management.',
      technologies: ['Flutter', 'Riverpod', 'Dart'],
      icon: Icons.task_alt_rounded,
      color: Color(0xFF5DE2E7),
    ),
    ProjectModel(
      number: '04',
      name: 'Ride Booking App',
      subtitle: 'MOBILE APPLICATION',
      description:
          'A ride booking experience with maps, route calculation, '
          'Firebase authentication and payment integration.',
      technologies: [
        'Flutter',
        'BLoC',
        'Firebase',
        'OpenStreetMap',
        'Razorpay Test Mode',
      ],
      icon: Icons.directions_car_rounded,
      color: Color(0xFFFFB86B),
    ),
  ];
}
