class Point {
  void display() {
    strokeWeight(10);
    for (int p=0; p<5000; p++) {
      if (pointX[p]==0 && pointY[p]==0) {
        continue;
      }
      if (pointStrokeFlag[p]==1) {
        stroke(255, 0, 0);
      } else {
        stroke(0);
      }
      if (pointMoveFlag[p]==1) {
        //ポイントのx座標移動判定
        if (pointX[p]>width) {
          pointX[p]=width;
          pointMoveFLAGX[p]=1;
        }
        if (pointX[p]<0) {
          pointX[p]=0;
          pointMoveFLAGX[p]=0;
        }
        if (pointMoveFLAGX[p]==0) pointX[p]=pointX[p]+pointVX[p];
        if (pointMoveFLAGX[p]==1) pointX[p]=pointX[p]-pointVX[p];
        //ポイントのy座標移動判定
        if (pointY[p]>height) {
          pointY[p]=height;
          pointMoveFLAGY[p]=1;
        }
        if (pointY[p]<0) {
          pointY[p]=0;
          pointMoveFLAGY[p]=0;
        }
        if (pointMoveFLAGY[p]==0) pointY[p]=pointY[p]+pointVY[p];
        if (pointMoveFLAGY[p]==1) pointY[p]=pointY[p]-pointVY[p];
      }
      point(pointX[p], pointY[p]);
    }
    strokeWeight(2);
  }

  ///////////ポイントの座標決定/////////////////////////////////////////////////
  void dragged() {
    if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>30 || scaleMouseY<0) {
      pointX[P]=scaleMouseX;
      pointY[P]=scaleMouseY;

      output.println("  pointX["+P+"]="+pointX[P]+";");
      output.println("  pointY["+P+"]="+pointY[P]+";");

      P++;
    }
  }
}