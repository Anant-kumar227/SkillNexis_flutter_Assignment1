import 'package:flutter/material.dart';

class ProfileCardScreen extends StatelessWidget {
  const ProfileCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.indigo.shade100,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.person,
                        size: 65,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  'Anant Kumar Singh',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                const Text(
                  'B.Tech - Computer Science Engineering',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Government Engineering College, Nawada',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 22),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'My Skills',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 12),
                const Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.center,
                  children: [
                    SkillChip(skill: 'Flutter'),
                    SkillChip(skill: 'Dart'),
                    SkillChip(skill: 'HTML'),
                    SkillChip(skill: 'CSS'),
                    SkillChip(skill: 'JavaScript'),
                    SkillChip(skill: 'C++'),
                  ],
                ),
                const SizedBox(height: 24),
                const Divider(),
                const ContactRow(icon: Icons.email, text: 'yourname@email.com'),
                const SizedBox(height: 12),
                const ContactRow(icon: Icons.phone, text: '+91 XXXXXXXXXX'),
                const SizedBox(height: 12),
                const ContactRow(icon: Icons.location_on, text: 'Bihar, India'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String skill;
  const SkillChip({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(skill),
      backgroundColor: Colors.indigo.shade50,
      side: BorderSide.none,
    );
  }
}

class ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const ContactRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.indigo, size: 22),
        const SizedBox(width: 12),
        Expanded(child: Text(text, style: const TextStyle(fontSize: 14))),
      ],
    );
  }
}
