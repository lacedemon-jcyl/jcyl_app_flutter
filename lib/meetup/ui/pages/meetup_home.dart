import 'package:flutter/material.dart';

class MeetupHome extends StatelessWidget {
  const MeetupHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar + filter
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(
                          color: const Color(0xFFE0E0E0),
                          width: 1,
                        ),
                      ),
                      child: const Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.search,
                            color: Color(0xFF666666),
                            size: 22,
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Buscar eventos o grupos...',
                            style: TextStyle(
                              color: Color(0xFF888888),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFFE0E0E0),
                        width: 1,
                      ),
                    ),
                    child: const Icon(
                      Icons.tune,
                      color: Color(0xFF333333),
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),

            // Time filter chips
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF6C5CE7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Próximos',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Hoy',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Mañana',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Fin de Semana',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Category tabs
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFEEEEEE), width: 1),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildCategoryTab(
                      icon: Icons.auto_awesome,
                      label: 'Todos los eventos',
                      isSelected: true,
                      iconColor: const Color(0xFFFF9F43),
                    ),
                    const SizedBox(width: 24),
                    _buildCategoryTab(
                      icon: Icons.people_alt,
                      label: 'Nuevos grupos',
                      isSelected: false,
                      iconColor: const Color(0xFFB8A4E0),
                    ),
                    const SizedBox(width: 24),
                    _buildCategoryTab(
                      icon: Icons.celebration,
                      label: 'Actividades sociales',
                      isSelected: false,
                      iconColor: const Color(0xFFFF9F43),
                    ),
                    const SizedBox(width: 24),
                    _buildCategoryTab(
                      icon: Icons.music_note,
                      label: 'Aficiones',
                      isSelected: false,
                      iconColor: const Color(0xFF4DD0E1),
                    ),
                  ],
                ),
              ),
            ),

            // Event list
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                children: [
                  // Yoga event card
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              color: const Color(0xFF9CCC65),
                              child: Image.network(
                                'https://via.placeholder.com/400x200',
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    Container(color: const Color(0xFF9CCC65)),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Center(
                              child: Container(
                                width: 56,
                                height: 56,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.6),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.refresh,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 12,
                            right: 12,
                            child: Row(
                              children: [
                                Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.9),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.ios_share,
                                    color: Color(0xFF333333),
                                    size: 18,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.9),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.bookmark_border,
                                    color: Color(0xFF333333),
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Energising and grounding yoga',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1A1A1A),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Cada semana el Jue, Mar a 10:00 GMT-2',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF666666),
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        '0,2 km • por Yogi-Grip Yoga Valencia',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF666666),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE0E0E0),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: const Icon(
                              Icons.person,
                              size: 16,
                              color: Color(0xFF888888),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '1 asistiendo',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // AICamp event card
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          height: 220,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFF3A2D8C),
                                Color(0xFF5B3FBF),
                                Color(0xFF7B4FE0),
                              ],
                            ),
                          ),
                          child: Stack(
                            children: [
                              // Decorative circles top right
                              Positioned(
                                top: -30,
                                right: -30,
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(
                                      0xFF4DD0E1,
                                    ).withOpacity(0.7),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: -40,
                                right: 40,
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFFFA726),
                                  ),
                                ),
                              ),
                              // Concentric rings
                              Positioned(
                                bottom: 20,
                                right: -20,
                                child: Container(
                                  width: 140,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.2),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                              // Content
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.change_history,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        const SizedBox(width: 6),
                                        const Text(
                                          'AICamp',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 3,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 1.5,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: const [
                                              Text(
                                                'LIVE',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1,
                                                ),
                                              ),
                                              SizedBox(width: 4),
                                              Icon(
                                                Icons.circle,
                                                color: Colors.red,
                                                size: 8,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 24),
                                    const Text(
                                      'AI, GenAI, LLMs\nand Agents',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'monospace',
                                        height: 1.3,
                                      ),
                                    ),
                                    const Spacer(),
                                    Center(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 24,
                                          vertical: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFB8A4E0),
                                          borderRadius: BorderRadius.circular(
                                            24,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Icon(
                                              Icons.map_outlined,
                                              color: Colors.white,
                                              size: 18,
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              'Ver mapa',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 12,
                        right: 12,
                        child: Row(
                          children: [
                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.25),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.ios_share,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.25),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.bookmark_border,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Color(0xFFEEEEEE), width: 1)),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(
                  icon: Icons.home_outlined,
                  label: 'Inicio',
                  isSelected: false,
                ),
                _buildNavItem(
                  icon: Icons.search,
                  label: 'Explorar',
                  isSelected: true,
                ),
                _buildNavItem(
                  icon: Icons.notifications_outlined,
                  label: 'Notificaciones',
                  isSelected: false,
                  hasBadge: true,
                ),
                _buildNavItem(
                  icon: Icons.chat_bubble_outline,
                  label: 'Mensajes',
                  isSelected: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryTab({
    required IconData icon,
    required String label,
    required bool isSelected,
    required Color iconColor,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: iconColor, size: 24),
        const SizedBox(height: 6),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: isSelected
                  ? const Color(0xFF1A1A1A)
                  : const Color(0xFF666666),
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            ),
          ),
        ),
        if (isSelected)
          Container(height: 2, width: 60, color: const Color(0xFF1A1A1A)),
      ],
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required bool isSelected,
    bool hasBadge = false,
  }) {
    final color = isSelected
        ? const Color(0xFF6C5CE7)
        : const Color(0xFF888888);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(icon, color: color, size: 26),
            if (hasBadge)
              Positioned(
                top: -2,
                right: -2,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            color: color,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
