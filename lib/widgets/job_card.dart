import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget jobCard({
  String companyName = '',
  String jobPosition = '',
  String jobLocation = '',
  String jobTime = '',
  String date = '',
  String imageUrl = '',
}) {
  return InkWell(
    onTap: () {},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Get.theme.dividerColor,
                  ),
                  color: Get.theme.dividerColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.network(imageUrl),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      companyName,
                      style: Get.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        jobPosition,
                        style: Get.textTheme.titleMedium!.copyWith(
                          color: Get.theme.colorScheme.secondary,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '$jobLocation - $jobTime',
                      style: Get.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              Text(
                date,
                style: Get.textTheme.bodySmall,
              ),
            ],
          ),
        ),
        Divider(
          height: 0,
        ),
      ],
    ),
  );
}
