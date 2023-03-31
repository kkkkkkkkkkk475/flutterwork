import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class Rahul1 extends StatefulWidget {
  const Rahul1({super.key});

  @override
  State<Rahul1> createState() => _Rahul1State();
}

class _Rahul1State extends State<Rahul1> {
  late AutoScrollController controller;
  List<Map<String, dynamic>> header = [
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1509319117193-57bab727e09d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3JTIwYXJyaXZhbCUyMGNsb3RoZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      "icon_name": "New Arrival"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/a0/6b/07/a06b07f0913a3cb024f28268605972f9.jpg',
      "icon_name": "Kurta & Suit"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1509319117193-57bab727e09d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3JTIwYXJyaXZhbCUyMGNsb3RoZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      "icon_name": "New Arrival"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/a0/6b/07/a06b07f0913a3cb024f28268605972f9.jpg',
      "icon_name": "Kurta & Suit"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/9a/80/f1/9a80f1863c39fa61afb7437bee99cf36.jpg',
      "icon_name": "Lehanga Sets"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/84/a9/38/84a938716a1e0c9e527ec835424be1ae.jpg',
      "icon_name": "Sarees"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/7d/72/40/7d724097006558a1a38172e1eb7433cb.jpg',
      "icon_name": "Jewellary"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/fc/f0/c5/fcf0c516f3f0cf17334779275803480f.jpg',
      "icon_name": "Nightwear"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/4e/c8/94/4ec8945063565fc2f51a8a8bb8ed652c.jpg',
      "icon_name": "Bed Linens"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    }
  ];
  List<Map<String, dynamic>> header2 = [
    {
      'img_url':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      "icon_name": "Sale"
    },
    {
      'img_url':
          'https://images.unsplash.com/photo-1509319117193-57bab727e09d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3JTIwYXJyaXZhbCUyMGNsb3RoZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      "icon_name": "New Arrival"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/a0/6b/07/a06b07f0913a3cb024f28268605972f9.jpg',
      "icon_name": "Kurta & Suit"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/39/b0/71/39b071854b5bf5aa8a8333061e786654.jpg',
      "icon_name": "Dresses"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/9a/80/f1/9a80f1863c39fa61afb7437bee99cf36.jpg',
      "icon_name": "Lehanga Sets"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/84/a9/38/84a938716a1e0c9e527ec835424be1ae.jpg',
      "icon_name": "Sarees"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/7d/72/40/7d724097006558a1a38172e1eb7433cb.jpg',
      "icon_name": "Jewellary"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/fc/f0/c5/fcf0c516f3f0cf17334779275803480f.jpg',
      "icon_name": "Nightwear"
    },
    {
      'img_url':
          'https://i.pinimg.com/474x/4e/c8/94/4ec8945063565fc2f51a8a8bb8ed652c.jpg',
      "icon_name": "Bed Linens"
    },
    {
      'img_url':
          'https://i.pinimg.com/564x/74/23/af/7423af6a44afe5cdd293c105c85ccfe8.jpg',
      "icon_name": "Shoes"
    }
  ];

  int onTapIndex = 0;
  @override
  void initState() {
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log(header.length.toString());
    log(header2.length.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'CATEGORIES',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Row(
        children: [
          SizedBox(
              width: 70,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: header2.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        onTapIndex = index;
                        controller.scrollToIndex(index * 12);
                      });
                    },
                    child: Container(
                      color: onTapIndex == index
                          ? Colors.white
                          : Colors.grey.shade300,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (index == 0)
                              SizedBox(
                                height: 20,
                              ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 97, 0, 112)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          header2[index]["img_url"]))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              header2[index]['icon_name'],
                              style: GoogleFonts.workSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Divider(),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: GridView.builder(
                controller: controller,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: header.length,
                itemBuilder: (context, index) {
                  return AutoScrollTag(
                      key: ValueKey(index),
                      controller: controller,
                      index: index,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 70,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      header[index]["img_url"],
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            header[index]['icon_name'],
                            style: GoogleFonts.workSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ));
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
