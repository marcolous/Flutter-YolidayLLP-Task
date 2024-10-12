import 'package:flutter/material.dart';
import 'package:yoliday_llp_task/core/styles/styles.dart';
import 'package:yoliday_llp_task/core/utils/app_images.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xffE0E0E0)),
      ),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
              child: AppImages.image,
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Kemampuan Merangkum Tulisan',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.style15Medium(context)
                            .copyWith(color: Colors.black),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'BAHASA SUNDA',
                              style: Styles.style12Med(context),
                            ),
                            Text(
                              'Oleh Al-Baiqi Samaan',
                              style: Styles.style12Med(context)
                                  .copyWith(color: Color(0xff9E95A2)),
                            ),
                          ],
                        ),
                        Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xffF39519), Color(0xffFFCD67)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              'A',
                              style: Styles.style18SemiBold(context)
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
