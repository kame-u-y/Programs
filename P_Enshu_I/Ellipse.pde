class Ellipse {
  /////////////エリプスを描く//////////////////////////////////////////////////////
  void display() {
    for (int e=0; e<500; e++) {
      if (ellipX[e]==0 && ellipY[e]==0) {
        continue;
      }
      if (ellipFillFlag[e]==1) {
        fill(255, 255, 0, 80);
      } else {
        noFill();
      }
      if (ellipMoveFlag[e]==1) {
        if (ellipR1[e]>=0) {
          //エリプスのx座標移動判定
          if (ellipX[e]>width-ellipR1[e]) {
            ellipX[e]=width-ellipR1[e];
            ellipMoveFLAGX[e]=1;
          }
          if (ellipX[e]<0+ellipR1[e]) {
            ellipX[e]=0+ellipR1[e];
            ellipMoveFLAGX[e]=0;
          }
        }
        if (ellipR1[e]<0) {
          if (ellipX[e]>width+ellipR1[e]) {
            ellipX[e]=width+ellipR1[e];
            ellipMoveFLAGX[e]=1;
          }
          if (ellipX[e]<0-ellipR1[e]) {
            ellipX[e]=0-ellipR1[e];
            ellipMoveFLAGX[e]=0;
          }
        }
        if (ellipMoveFLAGX[e]==0) ellipX[e]=ellipX[e]+ellipVX[e];
        if (ellipMoveFLAGX[e]==1) ellipX[e]=ellipX[e]-ellipVX[e];
        //エリプスのy座標移動判定
        if (ellipR2[e]>=0) {
          if (ellipY[e]>height-ellipR2[e]) {
            ellipY[e]=height-ellipR2[e];
            ellipMoveFLAGY[e]=1;
          }
          if (ellipY[e]<0+ellipR2[e]) {
            ellipY[e]=0+ellipR2[e];
            ellipMoveFLAGY[e]=0;
          }
        }
        if (ellipR2[e]<0) {
          if (ellipY[e]>height+ellipR2[e]) {
            ellipY[e]=height+ellipR2[e];
            ellipMoveFLAGY[e]=1;
          }
          if (ellipY[e]<0-ellipR2[e]) {
            ellipY[e]=0-ellipR2[e];
            ellipMoveFLAGY[e]=0;
          }
        }
        if (ellipMoveFLAGY[e]==0) ellipY[e]=ellipY[e]+ellipVY[e];
        if (ellipMoveFLAGY[e]==1) ellipY[e]=ellipY[e]-ellipVY[e];
      }
      stroke(0);
      ellipse(ellipX[e], ellipY[e], 2*ellipR1[e], 2*ellipR2[e]);
    }
  }
  /////////エリプスの中心と半径を選択///////////////////////////////////////////////
  void dragged() {
    if (ellipFLAG[E]==0) {
      if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>150 || scaleMouseY<120) {
        if (ellipFlag[E]==0) {
          ellipX[E]=scaleMouseX;
          ellipY[E]=scaleMouseY;
          ellipFlag[E]=1;
        }
      }
      if (ellipFlag[E]==1) {
        ellipR1[E]=scaleMouseX-ellipX[E];
        ellipR2[E]=scaleMouseY-ellipY[E];
      }
    }
  }
  /////////エリプスの大きさを決定////////////////////////////////////////////////
  void released() {
    if (ellipFLAG[E]==0) {
      ellipR1[E]=scaleMouseX-ellipX[E];
      ellipR2[E]=scaleMouseY-ellipY[E];
      if (ellipX[E]!=0 && ellipY[E]!=0) {
        output.println("  ellipX["+E+"]="+ellipX[E]+";");
        output.println("  ellipY["+E+"]="+ellipY[E]+";");
        output.println("  ellipR1["+E+"]="+ellipR1[E]+";");
        output.println("  ellipR2["+E+"]="+ellipR2[E]+";");
      }
    }
    E++;
  }
}