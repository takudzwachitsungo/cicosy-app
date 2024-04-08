import 'package:cicosy/common/color_extension.dart';
import 'package:flutter/material.dart';

class MostPopularCell extends StatelessWidget {

  final Map cObj;
  final VoidCallback onTap;

  const MostPopularCell({super.key, required this.cObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: InkWell(
                        onTap: onTap,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start ,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                                      cObj["image"].toString(),
                                                      width: 220, 
                                                      height: 110,
                                                      fit: BoxFit.cover,
                                                      ),
                            ),
                        
                            const SizedBox(
                              height: 8,
                              ),
                        
                      Text(
                        cObj["name"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: TColor.primaryText, 
                        fontSize: 18, 
                        fontWeight: FontWeight.w700),
                        ),

                        const SizedBox(
                              height: 4,
                              ),

                         
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            cObj["type"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: TColor.secondaryText, 
                            fontSize: 12, 
                            ),
                            ),

                            
                             Text(
                            " . ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: TColor.primary, 
                            fontSize: 12, 
                            ),
                            ),

                            Text(
                            cObj["location"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: TColor.secondaryText, 
                            fontSize: 12, 
                            ),
                            ),

                            Image.asset(
                                                      "assets/img/rate.png",
                                                      width: 10, 
                                                      height: 10,
                                                      fit: BoxFit.cover,
                                                      ),

                             Text(
                            cObj["rate"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: TColor.primary, 
                            fontSize: 12, 
                            ),
                            ),
                        ],
                      ),
                        
                          ],
                        ),
                      ),
                    );
  }
}