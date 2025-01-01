import 'package:admin_dashboard/models/all_expensess_item_header_model.dart';
import 'package:admin_dashboard/utlis/styles.dart';
import 'package:admin_dashboard/views/widgets/all_expensess_item_header.dart';
import 'package:flutter/material.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemHeaderModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyels.styleMedium16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyels.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyels.styleSemibold24,
          )
        ],
      ),
    );
  }
}

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemHeaderModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff4EB7F2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            imageBackGround: Colors.white.withOpacity(0.100000000149011612),
            imageColor: Colors.white,
            image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyels.styleMedium16.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyels.styleRegular14
                .copyWith(color: const Color(0xffFAFAFA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyels.styleSemibold24.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
