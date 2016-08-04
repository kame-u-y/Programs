class Move {
  /////////////ムーブを描く//////////////////////////////////////////////////////
  void display() {
    for (int m=0; m<500; m++) {
      if (moveX[m]==0 && moveY[m]==0) {
        continue;
      }
      if (moveFinishFlag[m]==0) {
        stroke(255, 0, 255);
      } else if (moveFinishFlag[m]==1) {
        noStroke();
      }
      noFill();
      rect(moveX[m], moveY[m], moveW[m], moveH[m]);
    }
  }
  ////////ムーブの始点と大きさを選択//////////////////////////////////////////////
  void dragged() {
    if (moveFLAG[M]==0) {
      if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>180 || scaleMouseY<1500) {
        if (moveFlag[M]==0) {
          moveX[M]=scaleMouseX;
          moveY[M]=scaleMouseY;
          moveFlag[M]=1;
        }
        if (moveFlag[M]==1) {
          moveW[M]=scaleMouseX-moveX[M];
          moveH[M]=scaleMouseY-moveY[M];
        }
      }
    }
  }
  ///////////ムーブの大きさを決定////////////////////////////////////////////////
  void released() {
    if (moveFLAG[M]==0) {
      moveW[M]=scaleMouseX-moveX[M];
      moveH[M]=scaleMouseY-moveY[M];
      if (moveX[M]!=0 && moveY[M]!=0) {
        moveX2[M]=moveX[M]+moveW[M];
        moveY2[M]=moveY[M]+moveH[M];

        //それぞれの図形の主要な点がムーブの枠内に入ると動き出すフラグが立つ
        for (int m=0; m<5000; m++) {
          if (pointX[m]<moveX2[M] && pointX[m]>moveX[M] && pointY[m]<moveY2[M] && pointY[m]>moveY[M]) {
            output.println("  pointMoveFlag["+m+"]=1;");
            pointMoveFlag[m]=1;
          } else if (pointX[m]<moveX[M] && pointX[m]>moveX2[M] && pointY[m]<moveY2[M] && pointY[m]>moveY[M]) {
            output.println("  pointMoveFlag["+m+"]=1;");
            pointMoveFlag[m]=1;
          } else if (pointX[m]<moveX2[M] && pointX[m]>moveX[M] && pointY[m]<moveY[M] && pointY[m]>moveY2[M]) {
            output.println("  pointMoveFlag["+m+"]=1;");
            pointMoveFlag[m]=1;
          } else if (pointX[m]<moveX[M] && pointX[m]>moveX2[M] && pointY[m]<moveY[M] && pointY[m]>moveY2[M]) {
            output.println("  pointMoveFlag["+m+"]=1;");
            pointMoveFlag[m]=1;
          }
        }
        for (int m=0; m<500; m++) {
          if (lineX1[m]<moveX2[M] && lineX1[m]>moveX[M] && lineY1[m]<moveY2[M] && lineY1[m]>moveY[M]) {
            output.println("  lineMoveFlag["+m+"]=1;");
            lineMoveFlag[m]=1;
          } else if (lineX1[m]<moveX[M] && lineX1[m]>moveX2[M] && lineY1[m]<moveY2[M] && lineY1[m]>moveY[M]) {
            output.println("  lineMoveFlag["+m+"]=1;");
            lineMoveFlag[m]=1;
          } else if (lineX1[m]<moveX2[M] && lineX1[m]>moveX[M] && lineY1[m]<moveY[M] && lineY1[m]>moveY2[M]) {
            output.println("  lineMoveFlag["+m+"]=1;");
            lineMoveFlag[m]=1;
          } else if (lineX1[m]<moveX[M] && lineX1[m]>moveX2[M] && lineY1[m]<moveY[M] && lineY1[m]>moveY2[M]) {
            output.println("  lineMoveFlag["+m+"]=1;");
            lineMoveFlag[m]=1;
          }
          if (rectX[m]<moveX2[M] && rectX[m]>moveX[M] && rectY[m]<moveY2[M] && rectY[m]>moveY[M]) {
            output.println("  rectMoveFlag["+m+"]=1;");
            rectMoveFlag[m]=1;
          } else if (rectX[m]<moveX[M] && rectX[m]>moveX2[M] && rectY[m]<moveY2[M] && rectY[m]>moveY[M]) {
            output.println("  rectMoveFlag["+m+"]=1;");
            rectMoveFlag[m]=1;
          } else if (rectX[m]<moveX2[M] && rectX[m]>moveX[M] && rectY[m]<moveY[M] && rectY[m]>moveY2[M]) {
            output.println("  rectMoveFlag["+m+"]=1;");
            rectMoveFlag[m]=1;
          } else if (rectX[m]<moveX[M] && rectX[m]>moveX2[M] && rectY[m]<moveY[M] && rectY[m]>moveY2[M]) {
            output.println("  rectMoveFlag["+m+"]=1;");
            rectMoveFlag[m]=1;
          }
          if (vertexX[m][0]<moveX2[M] && vertexX[m][0]>moveX[M] && vertexY[m][0]<moveY2[M] && vertexY[m][0]>moveY[M]) {
            output.println("  vertexMoveFlag["+m+"]=1;");
            vertexMoveFlag[m]=1;
          } else if (vertexX[m][0]<moveX2[M] && vertexX[m][0]>moveX[M] && vertexY[m][0]<moveY[M] && vertexY[m][0]>moveY2[M]) {
            output.println("  vertexMoveFlag["+m+"]=1;");
            vertexMoveFlag[m]=1;
          } else if (vertexX[m][0]<moveX[M] && vertexX[m][0]>moveX2[M] && vertexY[m][0]<moveY2[M] && vertexY[m][0]>moveY[M]) {
            output.println("  vertexMoveFlag["+m+"]=1;");
            vertexMoveFlag[m]=1;
          } else if (vertexX[m][0]<moveX[M] && vertexX[m][0]>moveX2[M] && vertexY[m][0]<moveY[M] && vertexY[m][0]>moveY2[M]) {
            output.println("  vertexMoveFlag["+m+"]=1;");
            vertexMoveFlag[m]=1;
          }
          if (ellipX[m]<moveX2[M] && ellipX[m]>moveX[M] && ellipY[m]<moveY2[M] && ellipY[m]>moveY[M]) {
            output.println("  ellipMoveFlag["+m+"]=1;");
            ellipMoveFlag[m]=1;
          } else if (ellipX[m]<moveX[M] && ellipX[m]>moveX2[M] && ellipY[m]<moveY2[M] && ellipY[m]>moveY[M]) {
            output.println("  ellipMoveFlag["+m+"]=1;");
            ellipMoveFlag[m]=1;
          } else if (ellipX[m]<moveX2[M] && ellipX[m]>moveX[M] && ellipY[m]<moveY[M] && ellipY[m]>moveY2[M]) {
            output.println("  ellipMoveFlag["+m+"]=1;");
            ellipMoveFlag[m]=1;
          } else if (ellipX[m]<moveX[M] && ellipX[m]>moveX2[M] && ellipY[m]<moveY[M] && ellipY[m]>moveY2[M]) {
            output.println("  ellipMoveFlag["+m+"]=1;");
            ellipMoveFlag[m]=1;
          }
        }
        moveFinishFlag[M]=1;
      }
    }
    M++;
  }
}