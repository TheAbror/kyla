import 'package:flutter/material.dart';
import 'package:kyla/presentation/home_page/home_model.dart';
import 'package:kyla/presentation/home_page/widgets/dialog.dart';

class ShopsItem extends StatelessWidget {
  final List<ShopModel> shops;
  final int index;

  const ShopsItem({
    super.key,
    required this.shops,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    var price = shops[index].price;
    return GestureDetector(
      onTap: () {
        showTopToast(context);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(right: 30, bottom: 20),
        decoration: const BoxDecoration(
          color: Color(0XFF29305A),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: const Color(0XFF404D8E),
                  width: 0.4,
                ),
              ),
              child: shops[index].icon,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${price < 0 ? '- \$' : '\$'} ${price.abs() % 1 == 0 ? price.abs().toStringAsFixed(0) : price.abs().toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  shops[index].name,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 12,
                      color: Color(0XFF404D8E),
                    ),
                    const SizedBox(width: 2),
                    SizedBox(
                      width: 220,
                      child: Text(
                        shops[index].address,
                        style: const TextStyle(
                          fontSize: 12,
                          overflow: TextOverflow.ellipsis,
                          color: Color(0XFF404D8E),
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              shops[index].time,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0XFF404D8E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
