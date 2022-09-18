import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const Text(
            "Here are a few technologies I’ve been working with recently:",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Wrap(
            runAlignment: WrapAlignment.spaceBetween,
            children: const [
              SkillsWithHeader(
                header: 'Programming Language',
                techStack: ['Dart', 'JavaScript'],
              ),
              SkillsWithHeader(
                header: 'Libraries & Frameworks',
                techStack: ['Flutter', 'Angular', 'Node JS'],
              ),
              SkillsWithHeader(
                header: 'Database',
                techStack: ['PostgreSQL'],
              ),
              SkillsWithHeader(
                header: 'Version control',
                techStack: ['Git'],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SkillsWithHeader extends StatelessWidget {
  const SkillsWithHeader(
      {super.key, required this.header, required this.techStack});
  final String header;
  final List<String> techStack;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            header,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          Wrap(
            runSpacing: 10,
            spacing: 10,
            children: techStack
                .map((e) => OutlinedButton(onPressed: () {}, child: Text(e)))
                .toList(),
          )
        ],
      ),
    );
  }
}
