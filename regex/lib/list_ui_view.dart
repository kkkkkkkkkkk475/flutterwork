import 'dart:io';

import 'package:flutter/material.dart';

class ListUiView {
  static ListView listView(List<File> file) {
    return ListView(
      children: [listViewBuilder(file), listViewBuilder(file)],
    );
  }

  static ListView listViewBuilder(List<File> file) {
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      addRepaintBoundaries: false,
      itemCount: file.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Image.file(
            file[index],
          ),
        );
      },
    );
  }

  static GridView gridView(List<File> file) {
    return GridView(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        for (int i = 0; i < file.length; i++)
          Image.file(
            file[i],
          )
      ],
    );
  }

  static GridView gridViewBuilder(List<File> file) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: file.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Image.file(
          file[index],
        );
      },
    );
  }
}
