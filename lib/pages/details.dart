import 'package:projectfinal/domain/rep.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final Figurinhas figurinhas;

  const Details({
    Key? key,
    required this.figurinhas,
  }) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MEUS LIVROS',
          style: TextStyle(
              fontFamily: 'Pacifico-Regular',
              fontSize: 28,
              color: Colors.black26),
        ),
        toolbarHeight: 100,
        backgroundColor: const Color(0xffa0cfcc),
      ),
      body: Column(
        children: [
          Image.network(widget.figurinhas.imagem),
          Padding(
            padding: const EdgeInsets.all(00),
            child: Column(
              children: [
                Text(
                  widget.figurinhas.titulo,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
