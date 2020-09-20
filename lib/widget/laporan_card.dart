import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LaporanCard extends StatelessWidget {
  final DateTime dateNow = DateTime.now();

  String dateFormat(DateTime date) {
    return DateFormat('dd/MMMM/yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              itemLeftTop(),
              itemRightTop(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 2 * 10 - 170,
                child: Text(
                  'Jl. alamat asala sala ancol selatan jakarta utaralaksjdlaskjdlaskjdaskldjaskldjaslkdjalkdjaslkdkasjdlkajlkasj',
                  style: TextStyle(fontSize: 18),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '${dateFormat(dateNow)}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          )
        ],
      ),
    );
  }

  itemLeftTop() {
    return Text(
      'Kejahatan',
      style: TextStyle(fontSize: 25),
    );
  }

  itemRightTop() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            color: Colors.red,
            height: 30,
            width: 30,
            child: Icon(Icons.cancel, color: Colors.white),
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            print('to form');
          },
          child: Container(
            color: Colors.green,
            height: 30,
            width: 30,
            child: Icon(Icons.done_outline, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
