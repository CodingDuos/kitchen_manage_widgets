import 'package:flutter/material.dart';

class MySearchField extends StatefulWidget {
  const MySearchField({super.key});

  @override
  State<MySearchField> createState() => _MySearchFieldState();
}

class _MySearchFieldState extends State<MySearchField> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _searchResults = [];
  OverlayEntry? _overlayEntry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  // Clear the search text and results
                  _searchController.clear();
                  _removeOverlay();
                },
              ),
            ),
            onChanged: (text) {
              // Update search results dynamically based on text input
              setState(() {
                _searchResults = _performSearch(text);
              });
              _showOverlay();
            },
          ),
          const SizedBox(height: 20.0),
          // Other widgets below the TextField
          // Add your other widgets here
        ],
      ),
    );
  }

  List<String> _performSearch(String query) {
    // Perform your search logic here
    // For simplicity, just returning a list of items containing the query
    return List.generate(10, (index) => '$query Result ${index + 1}');
  }

  void _showOverlay() {
    if (_overlayEntry == null) {
      _overlayEntry = OverlayEntry(
        builder: (context) => Positioned(
          top: 100.0, // Adjust the position as needed
          left: 0.0,
          right: 0.0,
          child: Material(
            color: Colors.transparent,
            child: SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: _searchResults
                    .map((result) => ListTile(
                          title: Text(result),
                          onTap: () {
                            // Handle the result selection here
                            _handleResultSelection(result);
                          },
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
      );

      Overlay.of(context).insert(_overlayEntry!);
    }
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _handleResultSelection(String selectedResult) {
    // Handle the selected result
    // ignore: avoid_print
    print("Selected result: $selectedResult");

    // Close the overlay
    _removeOverlay();

    // Perform any other actions needed
  }
}
