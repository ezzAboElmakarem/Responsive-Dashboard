import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_app/features/dashboard/models/expenses_item_model.dart';

class InActiveItemHeader extends StatelessWidget {
  final ExpensesItemModel expensesItemModel;
  final bool isSelceted;

  const InActiveItemHeader({
    super.key,
    required this.expensesItemModel,
    required this.isSelceted,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: isSelceted
                      ? const Color(0xff60BEF3)
                      : const Color(0xffFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                    child: SvgPicture.asset(
                  expensesItemModel.icon,
                  colorFilter: ColorFilter.mode(
                      isSelceted ? Colors.white : const Color(0xff4EB7F2),
                      BlendMode.srcIn),
                )),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.571 * 2,
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 24,
            color: isSelceted ? Colors.white : const Color(0xff064061),
          ),
        )
      ],
    );
  }
}
