import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/data/cubits/sound_cubit/sound_cubit.dart';

import '../data/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  final ItemModel item;
  final double fontsize;
  const ItemInfo({super.key, required this.item, required this.fontsize});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    bool sound = false;

    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.deName,
                style: TextStyle(fontSize: fontsize, color: Colors.white),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                item.enName,
                style: TextStyle(fontSize: fontsize, color: Colors.white),
              )
            ],
          ),
        ),
        const Spacer(),
        BlocBuilder<SoundCubit, SoundState>(
          builder: (context, state) {
            if (state is Soundpause) {
              return IconButton(
                padding: EdgeInsets.only(right: 16.r),
                onPressed: () {
                  sound = !sound;
                  player.play(AssetSource(item.sound));

                  context.read<SoundCubit>().play();
                  player.onPlayerComplete.listen((event) {
                    sound = false;
                    context.read<SoundCubit>().pause();
                  });
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 31.sp,
                ),
              );
            } else {
              return IconButton(
                padding: EdgeInsets.only(right: 16.r),
                onPressed: () {
                  sound = !sound;
                  player.stop();
                  context.read<SoundCubit>().pause();
                },
                icon: sound == false
                    ? Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 31.sp,
                      )
                    : Icon(
                        Icons.stop,
                        color: Colors.white,
                        size: 31.sp,
                      ),
              );
            }
          },
        )
      ],
    );
  }
}
