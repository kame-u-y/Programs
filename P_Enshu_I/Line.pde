class Line {
  /////////////ラインを描く//////////////////////////////////////////////////////
  void display() {
    strokeWeight(5);
    for (int l=0; l<500; l++) {
      if (lineX1[l]==0 && lineY1[l]==0) {
        continue;
      }
      if (lineStrokeFlag[l]==1) {
        stroke(0, 0, 255);
      } else {
        stroke(0);
      }
      if (lineMoveFlag[l]==1) {
        //ラインのx座標移動判定
        if (lineX1[l]<=lineX2[l]) {
          lineW[l]=lineX2[l]-lineX1[l];
          if (lineX2[l]>width) {
            lineX1[l]=width-lineW[l];
            lineX2[l]=width;
            lineMoveFLAGX[l]=1;
          }
          if (lineX1[l]<0) {
            lineX1[l]=0;
            lineX2[l]=0+lineW[l];
            lineMoveFLAGX[l]=0;
          }
          if (lineMoveFLAGX[l]==0) {
            lineX1[l]=lineX1[l]+lineVX[l];
            lineX2[l]=lineX2[l]+lineVX[l];
          }
          if (lineMoveFLAGX[l]==1) {
            lineX1[l]=lineX1[l]-lineVX[l];
            lineX2[l]=lineX2[l]-lineVX[l];
          }
        }
        if (lineX1[l]>lineX2[l]) {
          lineW[l]=lineX1[l]-lineX2[l];
          if (lineX1[l]>width) {
            lineX1[l]=width;
            lineX2[l]=width-lineW[l];
            lineMoveFLAGX[l]=1;
          }
          if (lineX2[l]<0) {
            lineX1[l]=0+lineW[l];
            lineX2[l]=0;
            lineMoveFLAGX[l]=0;
          }
          if (lineMoveFLAGX[l]==0) {
            lineX1[l]=lineX1[l]+lineVX[l];
            lineX2[l]=lineX2[l]+lineVX[l];
          }
          if (lineMoveFLAGX[l]==1) {
            lineX1[l]=lineX1[l]-lineVX[l];
            lineX2[l]=lineX2[l]-lineVX[l];
          }
        }
        //ラインのy座標移動判定
        if (lineY1[l]<=lineY2[l]) {
          lineH[l]=lineY2[l]-lineY1[l];
          if (lineY2[l]>height) {
            lineY1[l]=height-lineH[l];
            lineY2[l]=height;
            lineMoveFLAGY[l]=1;
          }
          if (lineY1[l]<0) {
            lineY1[l]=0;
            lineY2[l]=0+lineH[l];
            lineMoveFLAGY[l]=0;
          }
          if (lineMoveFLAGY[l]==0) {
            lineY1[l]=lineY1[l]+lineVY[l];
            lineY2[l]=lineY2[l]+lineVY[l];
          }
          if (lineMoveFLAGY[l]==1) {
            lineY1[l]=lineY1[l]-lineVY[l];
            lineY2[l]=lineY2[l]-lineVY[l];
          }
        }
        if (lineY1[l]>lineY2[l]) {
          lineH[l]=lineY1[l]-lineY2[l];
          if (lineY1[l]>height) {
            lineY1[l]=height;
            lineY2[l]=height-lineH[l];
            lineMoveFLAGY[l]=1;
          }
          if (lineY2[l]<0) {
            lineY1[l]=0+lineH[l];
            lineY2[l]=0;
            lineMoveFLAGY[l]=0;
          }
          if (lineMoveFLAGY[l]==0) {
            lineY1[l]=lineY1[l]+lineVY[l];
            lineY2[l]=lineY2[l]+lineVY[l];
          }
          if (lineMoveFLAGY[l]==1) {
            lineY1[l]=lineY1[l]-lineVY[l];
            lineY2[l]=lineY2[l]-lineVY[l];
          }
        }
      }
      line(lineX1[l], lineY1[l], lineX2[l], lineY2[l]);
    }
    strokeWeight(2);
  }
  /////////ラインの始点と長さを決定///////////////////////////////////////////////
  void dragged() {
    if (lineFLAG[L]==0) {
      if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>60 || scaleMouseY<30) {
        if (lineFlag[L]==0) {
          lineX1[L]=scaleMouseX;
          lineY1[L]=scaleMouseY;
          lineFlag[L]=1;
        }
      }
      if (lineFlag[L]==1) {
        lineX2[L]=scaleMouseX;
        lineY2[L]=scaleMouseY;
      }
    }
  }
  ///////////ラインの終点を決定//////////////////////////////////////////////////
  void released() {
    if (lineFLAG[L]==0) {
      lineX2[L]=scaleMouseX;
      lineY2[L]=scaleMouseY;
      lineFLAG[L]=1;
      if (lineX1[L]!=0 && lineY1[L]!=0) {
        output.println("  lineX1["+L+"]="+lineX1[L]+";");
        output.println("  lineY1["+L+"]="+lineY1[L]+";");
        output.println("  lineX2["+L+"]="+lineX2[L]+";");
        output.println("  lineY2["+L+"]="+lineY2[L]+";");
      }
    }
    L++;
  }
}