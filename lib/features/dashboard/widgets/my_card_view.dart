import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utlis/app_images.dart';
import 'package:responsive_adaptive_app/utlis/app_styles.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 420 / 200,
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            decoration: ShapeDecoration(
              image: const DecorationImage(
                  image: AssetImage(Assets.imagesCardBackground),
                  fit: BoxFit.fill),
              color: const Color(0xff4EB7F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    "Name card",
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Syah Bandi",
                    style: AppStyles.styleMedium20(context),
                  ),
                  trailing: const Icon(Icons.image),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "0918 8124 0042 8129",
                        style: AppStyles.styleSemiBold24(context)
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "12/20 - 124",
                        style: AppStyles.styleRegular16(context)
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 27),
              ],
            ),
          ),
        )
      ],
    );
  }
}
