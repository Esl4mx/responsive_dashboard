import 'package:admin_dashboard/views/widgets/custom_button.dart';
import 'package:admin_dashboard/views/widgets/title_and_text_field.dart';
import 'package:flutter/material.dart';

class QuiclInvoicesForm extends StatelessWidget {
  const QuiclInvoicesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleAndTextField(
                title: "Customer name",
                hintText: "Type customer name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleAndTextField(
                title: "Customer Email",
                hintText: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleAndTextField(
                title: "Item name",
                hintText: "Type Item name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleAndTextField(
                title: "Item amount",
                hintText: "USD",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              title: "Add more details",
              backGrounColor: Colors.white,
              textColor: Color(0xff4EB7F2),
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              title: "Send Money",
            )),
          ],
        )
      ],
    );
  }
}
