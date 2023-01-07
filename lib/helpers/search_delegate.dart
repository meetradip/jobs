import 'package:flutter/material.dart';
import 'package:jobs/helpers/sample_data.dart';
import 'package:jobs/widgets/search_suggestions_card.dart';

class CustomSearchHintDelegate extends SearchDelegate<String> {
  CustomSearchHintDelegate()
      : super(
          searchFieldLabel: 'Search here...',
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
        );

  @override
  Widget buildLeading(BuildContext context) => const BackButton();

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: SampleData.searchSuggestions.length,
      itemBuilder: (BuildContext context, int index) {
        return searchSuggestionCard(
          SampleData.searchSuggestions[index].title,
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) => const Text('results');

  @override
  List<Widget> buildActions(BuildContext context) => <Widget>[];
}
