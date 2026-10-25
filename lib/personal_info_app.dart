import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 58,
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/profile.jpg',
                          width: 112,
                          height: 112,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(
                                Icons.person,
                                size: 75,
                                color: Colors.teal,
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Anant Kumar Singh',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Flutter Developer | CSE Student',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.white70),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Learning, Building and Growing',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const SectionTitle(title: 'About Me', icon: Icons.person_outline),
              const SizedBox(height: 12),
              const InfoCard(
                child: Text(
                  'Hello! I am a B.Tech Computer Science Engineering student. '
                  'I am interested in mobile application development, web development '
                  'and learning new technologies.',
                  style: TextStyle(fontSize: 15, height: 1.6),
                ),
              ),
              const SizedBox(height: 24),
              const SectionTitle(title: 'My Skills', icon: Icons.code),
              const SizedBox(height: 12),
              const InfoCard(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    SkillChip(skill: 'Flutter'),
                    SkillChip(skill: 'Dart'),
                    SkillChip(skill: 'HTML'),
                    SkillChip(skill: 'CSS'),
                    SkillChip(skill: 'JavaScript'),
                    SkillChip(skill: 'C++'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const SectionTitle(
                title: 'Contact Information',
                icon: Icons.contact_mail_outlined,
              ),
              const SizedBox(height: 12),
              const InfoCard(
                child: Column(
                  children: [
                    ContactItem(
                      icon: Icons.email_outlined,
                      title: 'Email',
                      value: 'yourname@email.com',
                    ),
                    Divider(height: 28),
                    ContactItem(
                      icon: Icons.phone_outlined,
                      title: 'Phone',
                      value: '+91 XXXXXXXXXX',
                    ),
                    Divider(height: 28),
                    ContactItem(
                      icon: Icons.location_on_outlined,
                      title: 'Location',
                      value: 'Bihar, India',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Made with Flutter ❤️',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final IconData icon;
  const SectionTitle({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.teal, size: 25),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  final Widget child;
  const InfoCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(padding: const EdgeInsets.all(18), child: child),
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
      backgroundColor: Colors.teal.shade50,
      side: BorderSide.none,
      labelStyle: const TextStyle(
        color: Colors.teal,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  const ContactItem({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.teal, size: 24),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
