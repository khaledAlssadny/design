import 'package:flutter/material.dart';

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
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 16),

          // Middle Column with two texts
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),

          // Right Toggle Switch
          GestureDetector(
            onTap: _handleToggle,
            child: Container(
              width: 50,
              height: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
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
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.all(2),
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
        const Divider(
          height: 1,
          thickness: 0.5,
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
        const Divider(
          height: 1,
          thickness: 0.5,
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
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
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
          const Divider(height: 1, indent: 56),
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
