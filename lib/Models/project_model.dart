import 'package:flutter/material.dart';

class ProjectModel {
  final String name;
  final String subtitle;
  final String description;
  final List<String> technologies;
  final IconData icon;
  final Color color;
  final String number;

  const ProjectModel({
    required this.name,
    required this.subtitle,
    required this.description,
    required this.technologies,
    required this.icon,
    required this.color,
    required this.number,
  });
}
