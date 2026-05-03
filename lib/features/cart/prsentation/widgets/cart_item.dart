import '../../../app/extensions/utils_extention.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/asset_paths.dart';
import '../../../../app/constants.dart';

import '../../../shared/presentation/widgets/inc_dec_button.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: AppColors.themeColor.withAlpha(20),
      margin: EdgeInsets.symmetric(horizontal: 16),
      color: Colors.white,
      child: Row(
        children: [
          Image.asset(AssetPaths.dummyShoePng, width: 100),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nike New Shoe DF3434K 2026 Edition',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text('Color: Red  Size: XL'),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete_forever_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${Constants.takaSign}120',
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: AppColors.themeColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IncDecButton(
                        initialValue: 1,
                        onChange: (int value) {
                          // print(value);
                        },
                      ),
                    ],
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