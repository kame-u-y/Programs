class Fill {
  /////////////フィルを描く//////////////////////////////////////////////////////
  void display() {
    for (int f=0; f<500; f++) {
      if (fillX[f]==0 && fillY[f]==0) {
        continue;
      }
      if (fillFinishFlag[f]==0) {
        stroke(0, 255, 0);
      } else if (fillFinishFlag[f]==1) {
        noStroke();
      }
      noFill();
      rect(fillX[f], fillY[f], fillW[f], fillH[f]);
    }
  }
  ////////フィルの始点と大きさを選択//////////////////////////////////////////////
  void dragged() {
    if (fillFLAG[F]==0) {
      if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>180 || scaleMouseY<1500) {
        if (fillFlag[F]==0) {
          fillX[F]=scaleMouseX;
          fillY[F]=scaleMouseY;
          fillFlag[F]=1;
        }
        if (fillFlag[F]==1) {
          fillW[F]=scaleMouseX-fillX[F];
          fillH[F]=scaleMouseY-fillY[F];
        }
      }
    }
  }
  ///////////フィルの大きさを決定////////////////////////////////////////////////
  void released() {
    if (fillFLAG[F]==0) {
      fillW[F]=scaleMouseX-fillX[F];
      fillH[F]=scaleMouseY-fillY[F];
      if (fillX[F]!=0 && fillY[F]!=0) {
        fillX2[F]=fillX[F]+fillW[F];
        fillY2[F]=fillY[F]+fillH[F];
        //それぞれの図形の主要な点がフィルの枠内に入ると色を塗るフラグが立つ
        for (int f=0; f<5000; f++) {
          if (pointX[f]<fillX2[F] && pointX[f]>fillX[F] && pointY[f]<fillY2[F] && pointY[f]>fillY[F]) {
            output.println("  pointStrokeFlag["+f+"]=1;");
            pointStrokeFlag[f]=1;
          } else if (pointX[f]<fillX[F] && pointX[f]>fillX2[F] && pointY[f]<fillY2[F] && pointY[f]>fillY[F]) {
            output.println("  pointStrokeFlag["+f+"]=1;");
            pointStrokeFlag[f]=1;
          } else if (pointX[f]<fillX2[F] && pointX[f]>fillX[F] && pointY[f]<fillY[F] && pointY[f]>fillY2[F]) {
            output.println("  pointStrokeFlag["+f+"]=1;");
            pointStrokeFlag[f]=1;
          } else if (pointX[f]<fillX[F] && pointX[f]>fillX2[F] && pointY[f]<fillY[F] && pointY[f]>fillY2[F]) {
            output.println("  pointStrokeFlag["+f+"]=1;");
            pointStrokeFlag[f]=1;
          }
        }
        for (int f=0; f<500; f++) {
          if (lineX1[f]<fillX2[F] && lineX1[f]>fillX[F] && lineY1[f]<fillY2[F] && lineY1[f]>fillY[F]) {
            output.println("  lineStrokeFlag["+f+"]=1;");
            lineStrokeFlag[f]=1;
          } else if (lineX1[f]<fillX[F] && lineX1[f]>fillX2[F] && lineY1[f]<fillY2[F] && lineY1[f]>fillY[F]) {
            output.println("  lineStrokeFlag["+f+"]=1;");
            lineStrokeFlag[f]=1;
          } else if (lineX1[f]<fillX2[F] && lineX1[f]>fillX[F] && lineY1[f]<fillY[F] && lineY1[f]>fillY2[F]) {
            output.println("  lineStrokeFlag["+f+"]=1;");
            lineStrokeFlag[f]=1;
          } else if (lineX1[f]<fillX[F] && lineX1[f]>fillX2[F] && lineY1[f]<fillY[F] && lineY1[f]>fillY2[F]) {
            output.println("  lineStrokeFlag["+f+"]=1;");
            lineStrokeFlag[f]=1;
          }
          if (rectX[f]<fillX2[F] && rectX[f]>fillX[F] && rectY[f]<fillY2[F] && rectY[f]>fillY[F]) {
            output.println("  rectFillFlag["+f+"]=1;");
            rectFillFlag[f]=1;
          } else if (rectX[f]<fillX[F] && rectX[f]>fillX2[F] && rectY[f]<fillY2[F] && rectY[f]>fillY[F]) {
            output.println("  rectFillFlag["+f+"]=1;");
            rectFillFlag[f]=1;
          } else if (rectX[f]<fillX2[F] && rectX[f]>fillX[F] && rectY[f]<fillY[F] && rectY[f]>fillY2[F]) {
            output.println("  rectFillFlag["+f+"]=1;");
            rectFillFlag[f]=1;
          } else if (rectX[f]<fillX[F] && rectX[f]>fillX2[F] && rectY[f]<fillY[F] && rectY[f]>fillY2[F]) {
            output.println("  rectFillFlag["+f+"]=1;");
            rectFillFlag[f]=1;
          }
          if (vertexX[f][0]<fillX2[F] && vertexX[f][0]>fillX[F] && vertexY[f][0]<fillY2[F] && vertexY[f][0]>fillY[F]) {
            output.println("  vertexFillFlag["+f+"]=1;");
            vertexFillFlag[f]=1;
          } else if (vertexX[f][0]<fillX[F] && vertexX[f][0]>fillX2[F] && vertexY[f][0]<fillY2[F] && vertexY[f][0]>fillY[F]) {
            output.println("  vertexFillFlag["+f+"]=1;");
            vertexFillFlag[f]=1;
          } else if (vertexX[f][0]<fillX2[F] && vertexX[f][0]>fillX[F] && vertexY[f][0]<fillY[F] && vertexY[f][0]>fillY2[F]) {
            output.println("  vertexFillFlag["+f+"]=1;");
            vertexFillFlag[f]=1;
          } else if (vertexX[f][0]<fillX[F] && vertexX[f][0]>fillX2[F] && vertexY[f][0]<fillY[F] && vertexY[f][0]>fillY2[F]) {
            output.println("  vertexFillFlag["+f+"]=1;");
            vertexFillFlag[f]=1;
          }
          if (ellipX[f]<fillX2[F] && ellipX[f]>fillX[F] && ellipY[f]<fillY2[F] && ellipY[f]>fillY[F]) {
            output.println("  ellipFillFlag["+f+"]=1;");
            ellipFillFlag[f]=1;
          } else if (ellipX[f]<fillX[F] && ellipX[f]>fillX2[F] && ellipY[f]<fillY2[F] && ellipY[f]>fillY[F]) {
            output.println("  ellipFillFlag["+f+"]=1;");
            ellipFillFlag[f]=1;
          } else if (ellipX[f]<fillX2[F] && ellipX[f]>fillX[F] && ellipY[f]<fillY[F] && ellipY[f]>fillY2[F]) {
            output.println("  ellipFillFlag["+f+"]=1;");
            ellipFillFlag[f]=1;
          } else if (ellipX[f]<fillX[F] && ellipX[f]>fillX2[F] && ellipY[f]<fillY[F] && ellipY[f]>fillY2[F]) {
            output.println("  ellipFillFlag["+f+"]=1;");
            ellipFillFlag[f]=1;
          }
        }
        fillFinishFlag[F]=1;
      }
    }
    F++;
  }
}