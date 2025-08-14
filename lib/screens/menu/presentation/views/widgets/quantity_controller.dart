import 'package:design/core/constants/text_styles.dart';
import 'package:design/screens/menu/presentation/views/cubit/quantity_cubit/quantity_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/quantity_cubit/quantity_cubit.dart';

class BuildQuantityController extends StatelessWidget {
  final int itemId;

  const BuildQuantityController({super.key, required this.itemId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuantityCubit, QuantityState>(
      builder: (context, state) {
        final quantity = state.quantities[itemId] ?? 0;

        if (quantity == 0) {
          return Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: SizedBox(
              height: 50.h,
              child: ElevatedButton.icon(
                onPressed: () {
                  context.read<QuantityCubit>().increment(itemId);
                },
                icon: Icon(Icons.add, size: 25.sp, color: Colors.black),
                label: FittedBox(
                  child: Text('Add To Cart',
                      textAlign: TextAlign.start,
                      style: AppTextStyles.semi18
                          .copyWith(color: Colors.black, fontSize: 18.sp)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF6B318),
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.w,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  elevation: 0,
                ),
              ),
            ),
          );
        } else {
          return SizedBox(
            width:
                1.sw, //MediaQuery.of(context).size.width, // or any max width
            height: 60.h,
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<QuantityCubit>().decrement(itemId);
                      },
                      child: SizedBox(
                        width: 60.w,
                        height: 60.h,
                        child: Image.asset(
                          'assets/images/remove.png',
                          width: 60.w,
                          height: 60.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          quantity.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<QuantityCubit>().increment(itemId);
                      },
                      child: SizedBox(
                        width: 60.w,
                        height: 60.h,
                        child: Image.asset(
                          'assets/images/plus.png',
                          width: 60.w,
                          height: 60.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
