import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;

  ArticleWidget(this.article);

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      header: Text(article.title),
      collapsed: Text(
        article.body,
        softWrap: true,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      expanded: Text(
        article.body,
        softWrap: true,
      ),
      // tapHeaderToExpand: true,
      // hasIcon: true,
    );
  }
}

class Article {
  String title;
  String body;
}

class EventPhotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      // <-- Provides ExpandableController to its children
      child: Column(
        children: [
          Expandable(
            // <-- Driven by ExpandableController from ExpandableNotifier
            collapsed: ExpandableButton(
              // <-- Expands when tapped on the cover photo
              child: buildCoverPhoto(),
            ),
            expanded: Column(children: [
              buildAllPhotos(),
              ExpandableButton(
                // <-- Collapses when tapped on
                child: Text("Back"),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  buildCoverPhoto() {}

  buildAllPhotos() {}
}
