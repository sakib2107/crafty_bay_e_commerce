import 'package:e_com/features/app/extensions/utils_extention.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../shared/presentation/widgets/color_picker.dart';
import '../../../shared/presentation/widgets/inc_dec_button.dart';
import '../../../shared/presentation/widgets/size_picker.dart';
import '../widgets/price_and_cart_section.dart';
import '../widgets/product_image_carousel.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  static const String name = '/product-details';

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductImageCarousel(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nike New Shoe DF3434K 2026 Edition',
                                    style: context.textTheme.bodyLarge?.copyWith(
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  Row(
                                    spacing: 8,
                                    children: [
                                      Wrap(
                                        children: [
                                          Icon(Icons.star, size: 16, color: Colors.amber),
                                          Text('4.5'),
                                        ],
                                      ),
                                      TextButton(onPressed: () {}, child: Text('Reviews')),
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: AppColors.themeColor,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Icon(
                                          Icons.favorite_outline,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            IncDecButton(onChange: (int value) {}),

                          ],
                        ),
                        const SizedBox(height: 16),
                        ColorPicker(
                          initialValue: 'Red',
                          colors: ['Red', 'Green', 'Black'],
                          onSelected: (String selectedColor) {},
                        ),
                        const SizedBox(height: 16),
                        SizePicker(
                          initialValue: 'L',
                          sizes: ['S', 'M', 'L', 'XL', 'XXL'],
                          onSelected: (String selectedColor) {},
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Description',
                          style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's''',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          PriceAndCartSection(),
        ],
      ),
    );
  }
}