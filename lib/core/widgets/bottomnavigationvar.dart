import 'package:flutter/material.dart';

class CustomBoomNavBar extends StatefulWidget {
  final int? currentIndex;
  final Function(int)? onTap;

  const CustomBoomNavBar({
    super.key,
    this.currentIndex,
    this.onTap,
  });

  @override
  State<CustomBoomNavBar> createState() => _CustomBoomNavBarState();
}

class _CustomBoomNavBarState extends State<CustomBoomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(Icons.home_outlined, 0),
          _buildNavItem(Icons.play_circle_outline, 1),
          _buildNavItem(Icons.lightbulb_outline, 2),
          _buildNavItem(Icons.menu_book_outlined, 3),
          _buildNavItem(Icons.person_outline, 4),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    final int selectedIndex = widget.currentIndex ?? 0;
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!(index);
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 28,
            color: isSelected ? Colors.blue : Colors.grey.shade400,
          ),
          const SizedBox(height: 6),
          if (isSelected)
            Container(
              height: 5,
              width: 5,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
}
