import 'package:commerce_x/Providers/cart_provider.dart';
import 'package:commerce_x/Providers/product_provider.dart';
import 'package:commerce_x/screens/Cart/cart.dart';
import 'package:commerce_x/widgets/customized_Text.dart';
import 'package:commerce_x/widgets/customized_size_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModalBottomSheet extends ConsumerWidget {
  const ModalBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final choosenProduct = ref.watch(productDetailProvider);
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
          choosenProduct.image!,
          fit: BoxFit.contain,
        ),
        ElevatedButton(
          child: const Text('show Product Details'),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return Container(
                    width: double.infinity.w,
                    height: 600.h,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.h),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.w),
                                  child: customizedText(
                                    data: '\$ ${choosenProduct.price}',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 8.w),
                                  child: customizedText(
                                    data: '\$32.5',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Colors.black,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.red)),
                                          width: 30.w,
                                          height: 12.h,
                                          child: customizedText(
                                            data: '-32% Off',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 7.sp),
                                          )),
                                      Icon(
                                        choosenProduct.isFavourite
                                            ? Icons.favorite
                                            : Icons.favorite_outline_outlined,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 15.h),
                            child: customizedText(
                                data: choosenProduct.title!,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.h),
                            child: customizedText(
                                data: 'Description',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.h),
                            child: customizedText(
                              data: choosenProduct.description!,
                              style: const TextStyle(
                                  wordSpacing: 2,
                                  height: 1,
                                  color: Colors.black38),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.h),
                            child: customizedText(
                                data: 'Color',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.h),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: const CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.black,
                                      child: Icon(Icons.check)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: const CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.lightGreen),
                                ),
                                const CircleAvatar(
                                    radius: 15, backgroundColor: Colors.red),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.h),
                            child: customizedText(
                                data: 'Size',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 5.w),
                                    child: SizeContainer(
                                      inch: '13"',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 5.w),
                                    child: SizeContainer(
                                      inch: '14"',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 5.w),
                                    child: SizeContainer(
                                      inch: '15"',
                                    ),
                                  ),
                                  SizeContainer(
                                    inch: '16"',
                                  )
                                ],
                              ),
                              Center(
                                  child: SizedBox(
                                width: double.maxFinite,
                                child: ElevatedButton(
                                    onPressed: () {
                                      ref
                                          .watch(cartProvider.notifier)
                                          .addToCart(choosenProduct);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const Cart(),
                                          ));
                                    },
                                    child: const Text('Add to Cart')),
                              ))
                            ],
                          )
                        ],
                      ),
                    ));
              },
            );
          },
        ),
      ],
    ));
  }
}
