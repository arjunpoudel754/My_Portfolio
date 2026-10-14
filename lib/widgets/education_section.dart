import 'package:flutter/material.dart';
import 'package:my_portfolio2/constants/colors.dart';
import 'package:my_portfolio2/constants/intro.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final details = [
      educationInstitution,
      educationQualification,
      educationPeriod,
    ].where((detail) => detail.isNotEmpty).toList();

    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.fromLTRB(25, 40, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          const Text(
            "Education",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 35),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(8),
              ),
              child: details.isEmpty
                  ? const Text(
                      "Education details coming soon.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: CustomColor.whitePrimary),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (final detail in details)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              detail,
                              style: const TextStyle(
                                color: CustomColor.whitePrimary,
                                fontSize: 16,
                              ),
                            ),
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
