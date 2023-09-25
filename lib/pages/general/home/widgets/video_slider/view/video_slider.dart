import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../../core/base/view/base_view.dart';
import '../../../../../../core/base/widget/base_stateless_widget.dart';
import '../viewmodel/video_viewmodel.dart';

final class VideoSlider extends BaseStatelessWidget<VideoSliderViewModel> {
  VideoSlider({Key? key}) : super(key: key, viewModel: VideoSliderViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: viewModel,
      onSuccess: () => _onSuccess(context: context),
    );
  }

  Widget _onSuccess({required BuildContext context}) {
    return SizedBox(
      height: 150,
      width: context.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: viewModel.videoUrlList.length,
          itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(8),
                child: YoutubePlayer(
                  controller: YoutubePlayerController(
                    initialVideoId: YoutubePlayer.convertUrlToId(
                        viewModel.videoUrlList[index]!)!,
                    flags: const YoutubePlayerFlags(
                      autoPlay: true,
                      mute: true,
                      enableCaption: true,
                      captionLanguage: 'en',
                    ),
                  ),
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.amber,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.amber,
                    handleColor: Colors.amberAccent,
                  ),
                ),
              )),
    );
  }
}
