import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/income_section_body.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              IncomeSectionHeader(),
              IncomSectionBody(),
            ],
          ),
        ));
  }
}
