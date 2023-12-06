import 'package:flutter/material.dart';

class StairsCard extends StatelessWidget {
  final bool isSelected;

  const StairsCard({Key? key, this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You can customize the appearance based on the isSelected state
    return Container(
      width: 100,
      height: 120,
      color: isSelected ? Color.fromARGB(255, 254, 104, 11) : Colors.grey,
      child: Icon(Icons.nordic_walking),
    );
  }
}

class CardCarrouselStairs extends StatefulWidget {
  const CardCarrouselStairs({super.key});

  @override
  _CardCarrouselStairsState createState() => _CardCarrouselStairsState();
}

class _CardCarrouselStairsState extends State<CardCarrouselStairs> {
  int selectedCardIndex =
      -1; // Index of the selected card, -1 means none is selected

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.1, 0.3),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width * 0.88,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(4, (index) {
            return GestureDetector(
              onTap: () {
                // Handle card selection
                setState(() {
                  selectedCardIndex = index;
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: 15),
                child: StairsCard(
                  isSelected: selectedCardIndex == index,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0.8),
      child: FloatingActionButton.large(
          onPressed: () {},
          backgroundColor: Color.fromARGB(255, 254, 104, 11),
          child: Icon(Icons.play_arrow)),
    );
  }
}
