import 'package:flutter/material.dart';
import 'package:projectfinal/domain/rep.dart';
import 'package:projectfinal/pages/details.dart';

class Informes extends StatefulWidget {
  final Figurinhas figurinhas;

  const Informes({
    Key? key,
    required this.figurinhas,
  }) : super(key: key);

  @override
  _InformesState createState() => _InformesState();
}

class _InformesState extends State<Informes> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Details(
                figurinhas: widget.figurinhas,
              );
            },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildImage(widget.figurinhas.imagem),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.figurinhas.titulo,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildImage(String imagem) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(8),
      ),
      child: Container(
        height: 240,
        width: double.infinity,
        child: Image.network(
          imagem,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
