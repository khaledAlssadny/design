import 'package:design/core/constants/colors.dart';
import 'package:design/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Reusable Toggle Row Widget
class ToggleRowItem extends StatefulWidget {
  final String iconPath;
  final String title;
  final String subtitle;
  final bool initialValue;
  final ValueChanged<bool>? onToggle;
  final Color? activeColor;
  final Color? inactiveColor;

  const ToggleRowItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    this.initialValue = false,
    this.onToggle,
    this.activeColor,
    this.inactiveColor,
  });

  @override
  State<ToggleRowItem> createState() => _ToggleRowItemState();
}

class _ToggleRowItemState extends State<ToggleRowItem> {
  late bool isToggled;

  @override
  void initState() {
    super.initState();
    isToggled = widget.initialValue;
  }

  void _handleToggle() {
    setState(() {
      isToggled = !isToggled;
    });
    widget.onToggle?.call(isToggled);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          // Left Icon
          Image.asset(
            widget.iconPath,
            width: 24.w,
            height: 24.h,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 16.w),

          // Middle Column with two texts
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.title, style: AppTextStyles.semi18),
                SizedBox(height: 4.h),
                Text(
                  widget.subtitle,
                  style:
                      AppTextStyles.semi18.copyWith(color: AppColors.secondary),
                ),
              ],
            ),
          ),

          // Right Toggle Switch
          GestureDetector(
            onTap: _handleToggle,
            child: Container(
              width: 50.w,
              height: 28.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                color: isToggled
                    ? (widget.activeColor ?? const Color(0xFFF6B318))
                    : (widget.inactiveColor ?? Colors.grey[300]),
              ),
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                alignment:
                    isToggled ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  margin: EdgeInsets.all(2.r),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Usage Example Widget
class ToggleSettings extends StatelessWidget {
  const ToggleSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ToggleRowItem(
          iconPath: 'assets/images/marketing.png',
          title: 'Marketing Communication',
          subtitle:
              'Once you open it you will receive emails and offer\n on your inbox ',
          initialValue: true,
          onToggle: (value) {
            print('Notifications toggled: $value');
          },
        ),

        // Optional divider between items
        Divider(
          height: 1.h,
          thickness: 0.5.r,
          color: Color(0xFFE5E5E5),
          indent: 56,
        ),

        ToggleRowItem(
          iconPath: 'assets/images/app_communication.png',
          title: 'App Communication',
          subtitle:
              'Once you open it you will receive \nNotifications from our app',
          initialValue: false,
          onToggle: (value) {
            print('Location toggled: $value');
          },
        ),

        // You can add more toggle items here
        Divider(
          height: 1.h,
          thickness: 0.5.r,
          color: Color(0xFFE5E5E5),
          indent: 56,
        ),
      ],
    );
  }
}

// Alternative: If you prefer to use it in a Card or Container
class ToggleSettingsCard extends StatelessWidget {
  const ToggleSettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          ToggleRowItem(
            iconPath: 'assets/images/notification.png',
            title: 'Push Notifications',
            subtitle: 'Receive notifications about orders',
            initialValue: true,
            onToggle: (value) {
              print('Notifications: $value');
            },
          ),
          Divider(height: 1.h, indent: 56),
          ToggleRowItem(
            iconPath: 'assets/images/location.png',
            title: 'Location Services',
            subtitle: 'Allow location access',
            initialValue: false,
            onToggle: (value) {
              print('Location: $value');
            },
          ),
        ],
      ),
    );
  }
}
