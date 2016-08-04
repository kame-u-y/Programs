class Rect {
  /////////////レクトを描く//////////////////////////////////////////////////////
  void display() {
    for (int r=0; r<500; r++) {
      if (rectX[r]==0 && rectY[r]==0) {
        continue;
      }
      if (rectFillFlag[r]==1) {
        fill(0, 255, 0, 80);
      } else {
        noFill();
      }
      stroke(0);
      if (rectMoveFlag[r]==1) {
        //レクトのx座標移動判定
        rectX2[r]=rectX[r]+rectW[r];
        if (rectX[r]<=rectX2[r]) {
          if (rectX2[r]>width) {
            rectX[r]=width-rectW[r];
            rectMoveFLAGX[r]=1;
          }
          if (rectX[r]<0) {
            rectX[r]=0;
            rectMoveFLAGX[r]=0;
          }
        } else if (rectX[r]>rectX2[r]) {
          if (rectX[r]>width) {
            rectX[r]=width;
            rectMoveFLAGX[r]=1;
          }
          if (rectX2[r]<0) {
            rectX[r]=0-rectW[r];
            rectMoveFLAGX[r]=0;
          }
        }
        if (rectMoveFLAGX[r]==0) rectX[r]=rectX[r]+rectVX[r];
        if (rectMoveFLAGX[r]==1) rectX[r]=rectX[r]-rectVX[r];
        //レクトのy座標移動判定
        rectY2[r]=rectY[r]+rectH[r];
        if (rectY[r]<=rectY2[r]) {
          if (rectY2[r]>height) {
            rectY[r]=height-rectH[r];
            rectMoveFLAGY[r]=1;
          }
          if (rectY[r]<0) {
            rectY[r]=0;
            rectMoveFLAGY[r]=0;
          }
        } else if (rectY[r]>rectY2[r]) {
          if (rectY[r]>height) {
            rectY[r]=height;
            rectMoveFLAGY[r]=1;
          }
          if (rectY2[r]<0) {
            rectY[r]=0-rectH[r];
            rectMoveFLAGY[r]=0;
          }
        }
        if (rectMoveFLAGY[r]==0) rectY[r]=rectY[r]+rectVY[r];
        if (rectMoveFLAGY[r]==1) rectY[r]=rectY[r]-rectVY[r];
      }

      rect(rectX[r], rectY[r], rectW[r], rectH[r]);
    }
  }
  ////////レクトの始点と大きさを選択//////////////////////////////////////////////
  void dragged() {
    if (rectFLAG[R]==0) {
      if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>90 || scaleMouseY<60) {
        if (rectFlag[R]==0) {
          rectX[R]=scaleMouseX;
          rectY[R]=scaleMouseY;
          rectFlag[R]=1;
        }
      }
      if (rectFlag[R]==1) {
        rectW[R]=scaleMouseX-rectX[R];
        rectH[R]=scaleMouseY-rectY[R];
      }
    }
  }
  ///////////レクトの大きさを決定////////////////////////////////////////////////
  void released() {
    if (rectFLAG[R]==0) {
      rectW[R]=scaleMouseX-rectX[R];
      rectH[R]=scaleMouseY-rectY[R];
      if (rectX[R]!=0 && rectY[R]!=0) {
        output.println("  rectX["+R+"]="+rectX[R]+";");
        output.println("  rectY["+R+"]="+rectY[R]+";");
        output.println("  rectW["+R+"]="+rectW[R]+";");
        output.println("  rectH["+R+"]="+rectH[R]+";");
      }
    }
    R++;
  }
}