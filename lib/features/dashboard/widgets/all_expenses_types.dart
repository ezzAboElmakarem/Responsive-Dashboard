import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/models/expenses_item_model.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/inactive_expenses_item.dart';
import 'package:responsive_adaptive_app/utlis/app_images.dart';

class AllExpensesTypes extends StatefulWidget {
  const AllExpensesTypes({
    super.key,
  });

  @override
  State<AllExpensesTypes> createState() => _AllExpensesTypesState();
}

class _AllExpensesTypesState extends State<AllExpensesTypes> {
  static List<ExpensesItemModel> items = [
    ExpensesItemModel(
        title: "Balance",
        date: "April 2022",
        price: "\$20,129",
        icon: Assets.imagesBalance),
    ExpensesItemModel(
        title: "Income",
        date: "April 2022",
        price: "\$20,129",
        icon: Assets.imagesIncome),
    ExpensesItemModel(
        title: "Expenses",
        date: "April 2022",
        price: "\$20,129",
        icon: Assets.imagesExpenses),
  ];
  int selectedIndex = 0;
  bool isSelceted = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelceted = !isSelceted;
                  selectedIndex = 0;
                });
              },
              child: ActiveInActiveExpensesItem(
                isSelceted: selectedIndex == 0,
                expensesItemModel: items[0],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelceted = !isSelceted;
                  selectedIndex = 1;
                });
              },
              child: ActiveInActiveExpensesItem(
                isSelceted: selectedIndex == 1,
                expensesItemModel: items[1],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelceted = !isSelceted;
                  selectedIndex = 2;
                });
              },
              child: ActiveInActiveExpensesItem(
                isSelceted: selectedIndex == 2,
                expensesItemModel: items[2],
              ),
            ),
          ),
        ],
      ),
      // Row(
      //   children: items.asMap().entries.map((e) {
      //     int index = e.key;
      //     var item = e.value;
      //     return Expanded(
      //       child: GestureDetector(
      // onTap: () {
      //   setState(() {
      //     isSelceted = !isSelceted;
      //     selectedIndex = index;
      //   });
      // },
      //         child: Padding(
      //           padding: index == 1
      //               ? const EdgeInsets.symmetric(horizontal: 12)
      //               : const EdgeInsets.symmetric(horizontal: 0),
      //           child: ActiveInActiveExpensesItem(
      //             isSelceted: selectedIndex == index,
      //             expensesItemModel: item,
      //           ),
      //         ),
      //       ),
      //     );
      //   }).toList(),
      // ),
    );
  }
}
