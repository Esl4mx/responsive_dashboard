import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader(
      {super.key, required this.image, this.imageBackGround, this.imageColor});
  final String image;
  final Color? imageBackGround, imageColor;

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
                decoration: BoxDecoration(
                  color: imageBackGround ?? const Color(0xffFAFAFA),
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                )),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            color: imageColor == null ? const Color(0xff064061) : Colors.white,
            Icons.arrow_back_ios_new_rounded,
          ),
        )
      ],
    );
  }
}
