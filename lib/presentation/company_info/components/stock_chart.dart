import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:stock_app/domain/model/intraday_info.dart';

class StockChart extends StatelessWidget {
  final List<IntradayInfo> infos;
  final Color graphColor;
  final Color textColor;

  const StockChart({
    Key? key,
    this.infos = const [],
    required this.graphColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: CustomPaint(painter: ChartPainter(infos, graphColor, textColor)),
    );
  }
}

// class ChartPainter extends CustomPainter {
//   final List<IntradayInfo> infos;
//   final Color color;
//
//   late int upperValue = infos.map((e) => e.close).fold<double>(0.0, max).ceil();
//
//   late int lowerValue = infos.map((e) => e.close).reduce(min).toInt();
//
//   final spacing = 50.0;
//
//   late Paint strokePaint;
//
//   ChartPainter(this.infos, this.color) {
//     strokePaint = Paint()
//       ..color = color
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 3
//       ..strokeCap = StrokeCap.round;
//   }
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final priceStep = (upperValue - lowerValue) / 5.0;
//     for (var i = 0; i < 5; i++) {
//       final tp = TextPainter(
//         text: TextSpan(
//           text: '${(lowerValue + priceStep * i).round()}',
//           style: const TextStyle(fontSize: 12),
//         ),
//         textAlign: TextAlign.start,
//         textDirection: TextDirection.ltr,
//       );
//       tp.layout();
//       tp.paint(
//         canvas,
//         Offset(10, size.height - spacing - i * (size.height / 5.0)),
//       );
//     }
//
//     final spacePerHour = size.width / infos.length;
//     for (var i = 0; i < infos.length; i += 12) {
//       final hour = infos[i].date.hour;
//
//       final tp = TextPainter(
//         text: TextSpan(text: '$hour', style: const TextStyle(fontSize: 12)),
//         textAlign: TextAlign.start,
//         textDirection: TextDirection.ltr,
//       );
//       tp.layout();
//       tp.paint(canvas, Offset(i * spacePerHour + spacing, size.height - 5));
//     }
//
//     var lastX = 0.0;
//     final strokePath = Path();
//     for (var i = 0; i < infos.length; i++) {
//       final info = infos[i];
//       var nextIndex = i + 1;
//       if (i + 1 > infos.length - 1) nextIndex = infos.length - 1;
//       final nextInfo = infos[nextIndex];
//       final leftRatio = (info.close - lowerValue) / (upperValue - lowerValue);
//       final rightRatio =
//           (nextInfo.close - lowerValue) / (upperValue - lowerValue);
//
//       final x1 = spacing + i * spacePerHour;
//       final y1 = size.height - spacing - (leftRatio * size.height).toDouble();
//       final x2 = spacing + (i + 1) * spacePerHour;
//       final y2 = size.height - spacing - (rightRatio * size.height).toDouble();
//
//       if (i == 0) {
//         strokePath.moveTo(x1, y1);
//       }
//       lastX = (x1 + x2) / 2.0;
//       strokePath.quadraticBezierTo(x1, y1, lastX, (y1 + y2) / 2.0);
//     }
//
//     final fillPath = Path.from(strokePath)
//       ..lineTo(lastX, size.height - spacing)
//       ..lineTo(spacing, size.height - spacing)
//       ..close();
//
//     final fillPaint = Paint()
//       ..color = color
//       ..style = PaintingStyle.fill
//       ..shader = ui.Gradient.linear(
//         Offset.zero,
//         Offset(0, size.height - spacing),
//         [color.withOpacity(0.5), Colors.transparent],
//       );
//
//     canvas.drawPath(fillPath, fillPaint);
//     canvas.drawPath(strokePath, strokePaint);
//   }
//
//   @override
//   bool shouldRepaint(ChartPainter oldDelegate) {
//     return oldDelegate.infos != infos;
//   }
// }

// CustomPainter를 상속받아 직접 차트를 그리는 클래스
class ChartPainter extends CustomPainter {
  // 분봉/틱 데이터 리스트 (시간 + 종가 close 값 포함)
  final List<IntradayInfo> infos;

  // 차트 선과 채우기 색상
  final Color graphColor;

  final Color textColor;

  // 차트에서 가장 높은 가격 값
  // map으로 close 값만 뽑고, fold로 최대값 계산 → 소수점 올림
  late int upperValue = infos.map((e) => e.close).fold<double>(0.0, max).ceil();

  // 차트에서 가장 낮은 가격 값
  // reduce로 최소값 계산 → 정수 변환
  late int lowerValue = infos.map((e) => e.close).reduce(min).toInt();

  // 좌측/하단 여백 (가격 라벨, 시간 라벨을 위한 공간)
  final spacing = 50.0;

  // 차트 선을 그릴 Paint 객체
  late Paint strokePaint;

  // 생성자
  ChartPainter(this.infos, this.graphColor, this.textColor) {
    // 선 스타일 정의
    strokePaint = Paint()
      ..color =
          graphColor // 선 색상
      ..style = PaintingStyle
          .stroke // 채우지 않고 선만 그림
      ..strokeWidth =
          3 // 선 두께
      ..strokeCap = StrokeCap.round; // 선 끝을 둥글게 처리
  }

  // 실제 그림을 그리는 핵심 메서드
  @override
  void paint(Canvas canvas, Size size) {
    // 가격 범위를 5등분하기 위한 간격
    // 예: (최고가 - 최저가) / 5
    final priceStep = (upperValue - lowerValue) / 5.0;

    // Y축 가격 라벨 그리기
    for (var i = 0; i < 5; i++) {
      // 가격 텍스트 생성
      final tp = TextPainter(
        text: TextSpan(
          text: '${(lowerValue + priceStep * i).round()}',
          style: TextStyle(fontSize: 12, color: textColor),
        ),
        textAlign: TextAlign.start,
        textDirection: TextDirection.ltr,
      );

      // 텍스트 레이아웃 계산
      tp.layout();

      // 캔버스에 텍스트 그리기
      tp.paint(
        canvas,
        Offset(
          10, // 좌측 여백
          size.height - spacing - i * (size.height / 5.0), // Y축 기준 위치
        ),
      );
    }

    // X축 시간 라벨을 위한 간격
    // 전체 너비를 데이터 개수로 나눔
    // final spacePerHour = size.width / infos.length;
    final spacePerHour = (size.width - spacing) / infos.length;

    // 12개 데이터마다 한 번씩 시간 표시 (예: 5분봉이면 1시간 간격)
    for (var i = 0; i < infos.length; i += 12) {
      // 해당 데이터의 시간(hour)
      final hour = infos[i].date.hour;

      final tp = TextPainter(
        text: TextSpan(
          text: '$hour',
          style: TextStyle(fontSize: 12, color: textColor),
        ),
        textAlign: TextAlign.start,
        textDirection: TextDirection.ltr,
      );

      tp.layout();

      // 시간 텍스트 하단에 그리기
      // tp.paint(
      //   canvas,
      //   Offset(
      //     i * spacePerHour + spacing, // X 위치
      //     size.height - 5, // 하단 근처
      //   ),
      // );
      tp.paint(canvas, Offset(i * spacePerHour + spacing, size.height + 20));
    }

    // 마지막 X 좌표 저장용 (채우기 영역 닫을 때 사용)
    var lastX = 0.0;

    // 차트 선을 그릴 Path
    final strokePath = Path();

    // 데이터 포인트들을 베지어 곡선으로 연결
    for (var i = 0; i < infos.length; i++) {
      final info = infos[i];

      // 다음 인덱스 (마지막은 자기 자신)
      var nextIndex = i + 1;
      if (i + 1 > infos.length - 1) {
        nextIndex = infos.length - 1;
      }

      final nextInfo = infos[nextIndex];

      // 현재 값의 비율 (0.0 ~ 1.0)
      final leftRatio = (info.close - lowerValue) / (upperValue - lowerValue);

      // 다음 값의 비율
      final rightRatio =
          (nextInfo.close - lowerValue) / (upperValue - lowerValue);

      // 현재 포인트 좌표
      final x1 = spacing + i * spacePerHour;
      // final y1 = size.height - spacing - (leftRatio * size.height);
      final y1 = size.height - (leftRatio * size.height).toDouble();

      // 다음 포인트 좌표
      final x2 = spacing + (i + 1) * spacePerHour;
      // final y2 = size.height - spacing - (rightRatio * size.height);
      final y2 = size.height - (rightRatio * size.height).toDouble();

      // 첫 점이면 이동만
      if (i == 0) {
        strokePath.moveTo(x1, y1);
      }

      // 베지어 곡선 제어점 계산
      lastX = (x1 + x2) / 2.0;

      // 곡선으로 부드럽게 연결
      strokePath.quadraticBezierTo(x1, y1, lastX, (y1 + y2) / 2.0);
    }

    // 선 아래 영역을 채우기 위한 Path 생성
    final fillPath = Path.from(strokePath)
      ..lineTo(lastX, size.height - spacing) // 오른쪽 아래
      ..lineTo(spacing, size.height - spacing) // 왼쪽 아래
      ..close();

    // 채우기 Paint (그라데이션)
    final fillPaint = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
        Offset.zero,
        Offset(0, size.height - spacing),
        [
          graphColor.withOpacity(0.5), // 위쪽 진한 색
          Colors.transparent, // 아래쪽 투명
        ],
      );

    // 채우기 먼저 그림
    canvas.drawPath(fillPath, fillPaint);

    // 선을 마지막에 그림 (위에 올라오도록)
    canvas.drawPath(strokePath, strokePaint);
  }

  // 다시 그릴지 여부 판단
  @override
  bool shouldRepaint(ChartPainter oldDelegate) {
    // 데이터 리스트가 바뀌면 다시 그림
    return oldDelegate.infos != infos;
  }
}
