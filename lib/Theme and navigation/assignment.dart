// Import Flutter's material design package for UI components
import 'package:flutter/material.dart';

// Define a stateless Calculator App class named Assignment
class Assignment extends StatelessWidget {
  // Constructor with optional key parameter for Calculator App identification
  const Assignment({super.key});

  // Override the build method that returns the Calculator App tree
  @override
  Widget build(BuildContext context) {
    // Return a Scaffold - provides basic material design layout structure
    return Scaffold(
      // Set the body of the scaffold to a Stack Calculator App
      body: Stack(
        // Stack children - widgets layered on top of each other
        children: [
          // First child: Background image container with overlay
          Container(
            // Set fixed height for the background container
            height: 260,
            // Apply decoration to the container
            decoration: BoxDecoration(
              // Set background image
              image: DecorationImage(
                // Load image from assets folder
                image: AssetImage('asset/flutterimg1.jpg'),
                // Cover the entire container maintaining aspect ratio
                fit: BoxFit.cover,
              ),
            ),
            // Child of the image container - overlay for darkening effect
            child: Container(
              // Apply dark overlay decoration
              decoration: BoxDecoration(
                // Black color with 40% opacity (0.4) for overlay effect
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          // Second child: Main scrollable content
          SingleChildScrollView(
            // Column widget to arrange children vertically
            child: Column(
              // Align children to start (left) of the cross axis
              crossAxisAlignment: CrossAxisAlignment.start,
              // List of child widgets in the column
              children: [
                // Add 60 pixels of vertical spacing from top
                SizedBox(height: 60),
                // Padding wrapper for the main title
                Padding(
                  // Apply horizontal padding of 20 pixels on both sides
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  // Main title text widget
                  child: Text(
                    // Title text content
                    'Explore the World',
                    // Text styling properties
                    style: TextStyle(
                      // White text color for visibility on dark background
                      color: Colors.white,
                      // Large font size for main heading
                      fontSize: 28,
                      // Bold font weight for emphasis
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Add 20 pixels of vertical spacing
                SizedBox(height: 20),
                // Padding wrapper for search bar
                Padding(
                  // Apply horizontal padding of 20 pixels on both sides
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  // Container for styling the search input
                  child: Container(
                    // Decoration for the search container
                    decoration: BoxDecoration(
                      // White background color
                      color: Colors.white,
                      // Rounded corners with 12 pixel radius
                      borderRadius: BorderRadius.circular(12),
                    ),
                    // Text input field for search functionality
                    child: TextField(
                      // Input field decoration and styling
                      decoration: InputDecoration(
                        // Placeholder text when field is empty
                        hintText: 'Search destination...',
                        // Remove default border
                        border: InputBorder.none,
                        // Add search icon at the beginning
                        prefixIcon: Icon(Icons.search),
                        // Internal padding for the text field
                        contentPadding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                ),
                // Add 30 pixels of vertical spacing
                SizedBox(height: 30),
                // Padding wrapper for section title
                Padding(
                  // Apply horizontal padding of 20 pixels on both sides
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  // Section title text
                  child: Text(
                    // Section heading text
                    'Top Destinations',
                    // Text styling for section heading
                    style: TextStyle(
                      // Medium font size for section heading
                      fontSize: 18,
                      // Bold font weight for section heading
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Add 10 pixels of vertical spacing
                SizedBox(height: 10),
                // Padding wrapper for destinations grid
                Padding(
                  // Apply horizontal padding of 20 pixels on both sides
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  // Grid view to display destination cards in a 2-column layout
                  child: GridView.count(
                    // Number of columns in the grid
                    crossAxisCount: 2,
                    // Allow grid to size itself based on content
                    shrinkWrap: true,
                    // Disable scrolling (handled by parent SingleChildScrollView)
                    physics: NeverScrollableScrollPhysics(),
                    // Horizontal spacing between grid items
                    crossAxisSpacing: 12,
                    // Vertical spacing between grid items
                    mainAxisSpacing: 12,
                    // Aspect ratio of each grid item (width/height = 1.3)
                    childAspectRatio: 1.3,
                    // List of child widgets (destination cards)
                    children: [
                      // Create destination card for Paris
                      _destinationCard('Paris', 'asset/flutterimg1.jpg'),
                      // Create destination card for Maldives
                      _destinationCard('Maldives', 'asset/facebookLogo.jpg'),
                      // Create destination card for Dubai
                      _destinationCard('Dubai', 'asset/flutterimg1.jpg'),
                      // Create destination card for Bali
                      _destinationCard('Bali', 'asset/facebookLogo.jpg'),
                    ],
                  ),
                ),
                // Add 30 pixels of vertical spacing
                SizedBox(height: 30),
                // Padding wrapper for packages section title
                Padding(
                  // Apply horizontal padding of 20 pixels on both sides
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  // Packages section title
                  child: Text(
                    // Section heading text
                    'Trending Packages',
                    // Text styling for section heading
                    style: TextStyle(
                      // Medium font size for section heading
                      fontSize: 18,
                      // Bold font weight for section heading
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Add 10 pixels of vertical spacing
                SizedBox(height: 10),
                // Padding wrapper for package cards
                Padding(
                  // Apply horizontal padding of 20 pixels on both sides
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  // Column to arrange package cards vertically
                  child: Column(
                    // List of package card widgets
                    children: [
                      // Create package card for Paris getaway
                      _packageCard(
                        'Romantic Paris Getaway', // Package title
                        '4 nights - 5 days',       // Package duration
                        'asset/flutterimg1.jpg',   // Package image
                        ' 2799',                   // Package price
                      ),
                      // Add 12 pixels spacing between package cards
                      SizedBox(height: 12),
                      // Create package card for Bali tour
                      _packageCard(
                        'Bali Adventure Tour',     // Package title
                        '4 nights - 5 days',       // Package duration
                        'asset/facebookLogo.jpg',  // Package image
                        ' 2599',                   // Package price
                      ),
                    ],
                  ),
                ),
                // Add 30 pixels of bottom spacing
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Private method to create a destination card Calculator App
  Widget _destinationCard(String title, String imagePath) {
    // Return a clipped rectangle with rounded corners
    return ClipRRect(
      // Set border radius for rounded corners
      borderRadius: BorderRadius.circular(12),
      // Stack to layer image and overlay
      child: Stack(
        // Stack children
        children: [
          // Background image that fills the entire card
          Image.asset(
            imagePath,                    // Path to the image asset
            height: double.infinity,      // Fill available height
            width: double.infinity,       // Fill available width
            fit: BoxFit.cover,           // Cover entire area maintaining aspect ratio
          ),
          // Dark overlay container
          Container(
            // Apply dark overlay decoration
            decoration: BoxDecoration(
              // Black color with 30% opacity for darkening effect
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          // Positioned widget for title text at bottom-left
          Positioned(
            left: 8,    // 8 pixels from left edge
            bottom: 8,  // 8 pixels from bottom edge
            // Title text widget
            child: Text(
              title,  // Destination name
              // Text styling for destination title
              style: TextStyle(
                // White text color for visibility
                color: Colors.white,
                // Bold font weight for emphasis
                fontWeight: FontWeight.bold,
                // Medium font size
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Private method to create a package card Calculator App
  Widget _packageCard(String title, String subtitle, String imagePath, String price) {
    // Return a Material Design card
    return Card(
      // Card styling properties
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), // Rounded corners
      elevation: 2, // Shadow elevation for depth effect
      // Card content with padding
      child: Padding(
        // Apply 8 pixels padding on all sides
        padding: const EdgeInsets.all(8.0),
        // Row to arrange content horizontally
        child: Row(
          // Row children
          children: [
            // Package image with rounded corners
            ClipRRect(
              // Set border radius for image corners
              borderRadius: BorderRadius.circular(8),
              // Package image
              child: Image.asset(
                imagePath,           // Path to package image
                width: 80,          // Fixed width
                height: 60,         // Fixed height
                fit: BoxFit.cover,  // Cover the area maintaining aspect ratio
              ),
            ),
            // Add 12 pixels horizontal spacing
            SizedBox(width: 12),
            // Expanded widget to take remaining horizontal space
            Expanded(
              // Column for package details
              child: Column(
                // Align content to start (left) of cross axis
                crossAxisAlignment: CrossAxisAlignment.start,
                // Column children
                children: [
                  // Package title text
                  Text(
                    title, // Package name
                    // Title styling
                    style: TextStyle(
                      // Bold font weight for title
                      fontWeight: FontWeight.bold,
                      // Medium font size
                      fontSize: 15,
                    ),
                  ),
                  // Package subtitle (duration)
                  Text(
                    subtitle, // Package duration
                    // Subtitle styling
                    style: TextStyle(
                      // Grey color for secondary text
                      color: Colors.grey[600],
                      // Small font size
                      fontSize: 13,
                    ),
                  ),
                  // Add 6 pixels vertical spacing
                  SizedBox(height: 6),
                  // Package price text
                  Text(
                    price, // Package price
                    // Price styling
                    style: TextStyle(
                      // Blue color to highlight price
                      color: Colors.blue,
                      // Bold font weight for emphasis
                      fontWeight: FontWeight.bold,
                      // Medium font size
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            // Add 8 pixels horizontal spacing
            SizedBox(width: 8),
            // Book now button
            ElevatedButton(
              // Empty function - button press handler (currently does nothing)
              onPressed: () {},
              // Button styling
              style: ElevatedButton.styleFrom(
                // Blue background color
                backgroundColor: Colors.blue,
                // Minimum button size
                minimumSize: Size(70, 36),
                // No internal padding
                padding: EdgeInsets.zero,
                // Rounded rectangle shape
                shape: RoundedRectangleBorder(
                  // Border radius for button corners
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              // Button text
              child: Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}
