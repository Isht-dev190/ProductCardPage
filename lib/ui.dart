import 'package:flutter/material.dart';

class AppUI extends StatelessWidget {
  const AppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recommended for\nyour devices',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 20),
              
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.bookmark_border,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ),
                    ),
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: SizedBox(
                            height: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/airpodsMax.jpg',
                                  height: 200, // match the SizedBox height
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                        ),

                        
                        const SizedBox(height: 10),
                        
                        const Text(
                          'Free Engraving',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 14,
                          ),
                        ),
                        
                        const SizedBox(height: 6),
                        
                        const Text(
                          'AirPods Max — Silver',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        
                        const SizedBox(height: 6),
                        
                        const Text(
                        'A\$899.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        
                        const SizedBox(height: 20),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildColorOption(Colors.grey, isSelected: true),
                            _buildColorOption(Colors.red),
                            _buildColorOption(Colors.green),
                            _buildColorOption(Colors.blue),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              child: const Text(
                                '+ 1 more',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorOption(Color color, {bool isSelected = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: isSelected 
            ? Border.all(color: Colors.blue, width: 2) 
            : null,
      ),
    );
  }
}

//made a private method of buildColorOption method to create color options for the product, they dont work right now 