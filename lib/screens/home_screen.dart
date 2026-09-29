
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/course_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EduSpace',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryColor,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.notifications_none,
              color: AppTheme.primaryColor,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Halo, Mahasiswa!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Siap belajar hal baru hari ini?',
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 24),

            const CustomTextField(
              label: 'Cari materi pembelajaran',
              icon: Icons.search,
            ),

            const SizedBox(height: 28),

            const Text(
              'Kategori Materi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            const Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                CategoryChip(label: 'Pemrograman'),
                CategoryChip(label: 'Jaringan'),
                CategoryChip(label: 'Database'),
                CategoryChip(label: 'UI/UX'),
              ],
            ),

            const SizedBox(height: 28),

            const Text(
              'Materi Populer',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            const CourseCard(
              icon: Icons.code,
              title: 'Dasar Pemrograman',
              category: 'Pemrograman',
              color: Color(0xFFE0EAFF),
            ),

            const SizedBox(height: 12),

            const CourseCard(
              icon: Icons.computer,
              title: 'Jaringan Komputer',
              category: 'Jaringan',
              color: Color(0xFFE0F2FE),
            ),

            const SizedBox(height: 12),

            const CourseCard(
              icon: Icons.storage,
              title: 'Dasar Database',
              category: 'Database',
              color: Color(0xFFDCFCE7),
            ),
          ],
        ),
      ),

     bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: AppTheme.primaryColor,
      items: const [
      BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.menu_book_outlined),
      label: 'Materi',
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      label: 'Profil',
          ),
        ],
      ),
    );
  }
}

// ================= CATEGORY CHIP =================

class CategoryChip extends StatelessWidget {
  final String label;

  const CategoryChip({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: AppTheme.backgroundColor,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}