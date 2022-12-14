import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.image,
    required this.title,
    required this.address,
    required this.date,
    required this.favorite,
    required this.id,
  }) : super(key: key);

  final String image;
  final String title;
  final String address;
  final String date;
  final int favorite;
  final int id;

  @override
  Widget build(BuildContext context) {
    debugPrint(
      DateFormat("dd/MM/yyyy hh:mm").format(
        DateTime.parse(date),
      ),
    );
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .2,
                  height: MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(image),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: favorite == id
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : const SizedBox()),
            ],
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline6,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  address,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  DateFormat("E, d MMM yyyy hh:mm a")
                      .format(
                        DateTime.parse(date),
                      )
                      .toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
        const Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        )
      ],
    );
  }
}
