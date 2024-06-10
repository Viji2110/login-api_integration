// Widget todaySpecial(GetSpecialProduct? getSpecialProduct) {
//   return getSpecialProduct == null
//       ? Container()
//       : Padding(
//           padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
//           child: Container(
//             height: 100,
//             decoration: BoxDecoration(
//               boxShadow: const [
//                 BoxShadow(
//                   color: Color.fromRGBO(0, 0, 0, 0.14),
//                   offset: Offset(0, 0),
//                   blurRadius: 8,
//                 ),
//               ],
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: ListTile(
//               leading: Container(
//                 padding: EdgeInsets.all(5),
//                 width: 85,
//                 height: 85,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(7),
//                   gradient: const LinearGradient(
//                     begin: Alignment(-1.3, -1.7),
//                     end: Alignment(1.061, 1.038),
//                     colors: <Color>[Color(0xfff0f0f0), Color(0xffe7e6e6)],
//                     stops: <double>[0, 1],
//                   ),
//                 ),
//                 child: Center(
//                   child: Image.network(
//                     getSpecialProduct.imageUrl ?? "",
//                   ),
//                 ),
//               ),
//               title: Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       getSpecialProduct.title ?? "",
//                       style: productTitle,
//                     ),
//                     Text(
//                       (getSpecialProduct.subtitle ?? ""),
//                       style: productSubTitle,
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                             (getSpecialProduct.currencyCode ?? " ")
//                                 .toUpperCase(),
//                             style: countryCode),
//                         Text(
//                             ((getSpecialProduct.discountPrice ?? 0) / 100)
//                                 .toStringAsFixed(2)
//                                 .replaceAll(',', '.'),
//                             style: discountPriceStyle),
//                         const SizedBox(width: 10),
//                         Text(
//                             "${(getSpecialProduct.currencyCode ?? " ").toUpperCase()}${((getSpecialProduct.originalPrice ?? 0) / 100).toStringAsFixed(2).replaceAll(',', '.')}",
//                             style: originalPriceStyle),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               trailing: Column(
//                 children: [
//                   IconButton(
//                     alignment: Alignment.bottomRight,
//                     icon: const Icon(
//                       Icons.favorite,
//                       color: Color(0xF6F10101),
//                     ),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
// }
