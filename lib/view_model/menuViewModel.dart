

import 'package:danisdoc/interfaces/menuInterface.dart';
import 'package:danisdoc/utils/customScreenAnimation.dart';
import 'package:danisdoc/view/about/pages/about.dart';
import 'package:danisdoc/view/newDocument/pages/newDocumentForm.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MenuViewModel implements MenuInterface {
  @override
  goToDocuments(BuildContext context) {

  }

  @override
  goToInfo(BuildContext context) {
    Navigator.of(context).push(SlideAnimationTeen(widget: About()));
  }

  @override
  goToNewDocument(BuildContext context) {
    Navigator.of(context).push(SlideAnimationTeen(widget: DocumentForm()));
  }

}