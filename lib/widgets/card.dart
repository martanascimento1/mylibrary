import 'package:projectfinal/domain/rep.dart';
import 'package:projectfinal/pages/details.dart';
import 'package:flutter/material.dart';

class CardPacoteTuristico extends StatefulWidget {
  final Figurinhas figurinhas;

  const CardPacoteTuristico({
    Key? key,
    required this.figurinhas,
  }) : super(key: key);

  @override
  _CardPacoteTuristicoState createState() => _CardPacoteTuristicoState();
}

class _CardPacoteTuristicoState extends State<CardPacoteTuristico> {
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
        color: Colors.amber,
        height: 180,
        width: double.infinity,
        child: Image.network(
          imagem,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
