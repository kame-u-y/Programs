class Vertex {
  ///////////バーテックスを描く/////////////////////////////////////////////////////
  void display() {
    for (int v1=0; v1<500; v1++) {
      vertexCount=0;
      if (beginShapeFLAG[v1]==0) {
        break;
      }
      if (vertexFillFlag[v1]==1) {
        fill(0, 255, 255, 80);
      } else {
        noFill();
      }
      stroke(0);
      beginShape();
      for (int v2=0; v2<500; v2++) {
        if (vertexX[v1][v2]==0 && vertexY[v1][v2]==0) {
          if (lastVertexFlag[v1]==1) {
            vertex(vertexX[v1][0], vertexY[v1][0]);
            vertexCount++;
          }
          break;
        }
        vertex(vertexX[v1][v2], vertexY[v1][v2]);
        vertexCount++;
      }
      endShape();
      //跳ね返り判定
      if (lastVertexFlag[v1]==1 && vertexMoveFlag[v1]==1) {
        //上下左右端の座標取得
        MaxX[v1] = vertexX[v1][0];
        minX[v1] = vertexX[v1][0];
        MaxY[v1] = vertexY[v1][0];
        minY[v1] = vertexY[v1][0];
        for (int v=0; v<vertexCount-1; v++) {
          if (MaxX[v1]<vertexX[v1][v]) MaxX[v1]=vertexX[v1][v];
          if (minX[v1]>vertexX[v1][v]) minX[v1]=vertexX[v1][v];
          if (MaxY[v1]<vertexY[v1][v]) MaxY[v1]=vertexY[v1][v];
          if (minY[v1]>vertexY[v1][v]) minY[v1]=vertexY[v1][v];
        }
        for (int v=0; v<vertexCount-1; v++) {
          DistX[v1][v]=MaxX[v1]-vertexX[v1][v];
          DistY[v1][v]=MaxY[v1]-vertexY[v1][v];
          distX[v1][v]=vertexX[v1][v]-minX[v1];
          distY[v1][v]=vertexY[v1][v]-minY[v1];
        }
        //xの跳ね返り判定
        if (MaxX[v1]>width) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexX[v1][v]=width-DistX[v1][v];
          }
          vertexMoveFLAGX[v1]=1;
        }
        if (minX[v1]<0) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexX[v1][v]=0+distX[v1][v];
          }
          vertexMoveFLAGX[v1]=0;
        }
        if (vertexMoveFLAGX[v1]==0) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexX[v1][v]=vertexX[v1][v]+vertexVX[v1];
          }
        }
        if (vertexMoveFLAGX[v1]==1) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexX[v1][v]=vertexX[v1][v]-vertexVX[v1];
          }
        }
        //yの跳ね返り判定
        if (MaxY[v1]>height) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexY[v1][v]=height-DistY[v1][v];
          }
          vertexMoveFLAGY[v1]=1;
        }
        if (minY[v1]<0) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexY[v1][v]=0+distY[v1][v];
          }
          vertexMoveFLAGY[v1]=0;
        }
        if (vertexMoveFLAGY[v1]==0) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexY[v1][v]=vertexY[v1][v]+vertexVY[v1];
          }
        }
        if (vertexMoveFLAGY[v1]==1) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexY[v1][v]=vertexY[v1][v]-vertexVY[v1];
          }
        }
      }
    }
  }
  /////////バーテックスの頂点座標を決定///////////////////////////////////////////////
  void pressed() {
    if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>120 || scaleMouseY<90) {
      vertexFlag[U]=1;
      if (vertexFlag[U]==1) {
        if (beginShapeFLAG[U]==0) {
          beginShapeFLAG[U]=1;
          vertexX[U][V]=scaleMouseX;
          vertexY[U][V]=scaleMouseY;
          output.println("  vertexX["+U+"]["+V+"]="+vertexX[U][V]+";");
          output.println("  vertexY["+U+"]["+V+"]="+vertexY[U][V]+";");
          V++;
        } else if (beginShapeFLAG[U]==1) {
          vertexX[U][V]=scaleMouseX;
          vertexY[U][V]=scaleMouseY;
          output.println("  vertexX["+U+"]["+V+"]="+vertexX[U][V]+";");
          output.println("  vertexY["+U+"]["+V+"]="+vertexY[U][V]+";");
          V++;
        }
      }
    }
  }
}