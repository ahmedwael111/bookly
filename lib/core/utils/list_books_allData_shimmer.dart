import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BookListShimmer extends StatelessWidget {
  const BookListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6, // Show 6 shimmer placeholders
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Row(
            children: [
              // Book Image Placeholder
              Shimmer.fromColors(
                baseColor:
                    const Color.fromARGB(255, 54, 40, 65), // Darker purple base
                highlightColor: kPrimaryColor, // Lighter purple highlight
                child: Container(
                  width: 70,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[900],
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(width: 10),

              // Book Details Placeholder
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Shimmer.fromColors(
                      baseColor: const Color.fromARGB(255, 54, 40, 65),
                      highlightColor: kPrimaryColor,
                      child: Container(
                        height: 20,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[900],
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),

                    // Author
                    Shimmer.fromColors(
                      baseColor: const Color.fromARGB(255, 54, 40, 65),
                      highlightColor: kPrimaryColor,
                      child: Container(
                        height: 15,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[900],
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),

                    // Free Tag
                    Shimmer.fromColors(
                      baseColor: const Color.fromARGB(255, 54, 40, 65),
                      highlightColor: kPrimaryColor,
                      child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[900],
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Rating Placeholder
              Shimmer.fromColors(
                baseColor: const Color.fromARGB(255, 54, 40, 65),
                highlightColor: kPrimaryColor,
                child:
                    Icon(Icons.star, size: 20, color: Colors.deepPurple[900]),
              ),
            ],
          ),
        );
      },
    );
  }
}
