class Vertex {

  int beginShapeFLAG;       //バーテックスの始まりフラグ
  float [] vertexX = new float [500];   //バーテックスのx座標(一次:多角形の個数 二次:多角形の頂点x座標)
  float [] vertexY = new float [500];   //バーテックスのy座標(一次:多角形の個数 二次:多角形の頂点y座標)
  float vertexVX;         //バーテックスのx座標方向速度 配列は多角形ごと
  float vertexVY;         //バーテックスのy座標方向速度 配列は多角形ごと
  int vertexFlag;           //次のバーテックスへと移るためのフラグ
  int lastVertexFlag;       //最後のバーテックスを引くためのフラグ
  int V;                                       //バーテックスの配列を選択する変数
  int vertexCount;                             //バーテックスの個数カウント
  float MaxX;             //バーテックスの右端
  float minX;             //バーテックスの左端
  float MaxY;             //バーテックスの下端
  float minY;             //バーテックスの上端
  float [] DistX = new float [500];     //MaxXからの距離
  float [] distX = new float [500];     //maxXからの距離
  float [] DistY = new float [500];     //MaxYからの距離
  float [] distY = new float [500];     //maxYからの距離
  int vertexFillFlag;       //バーテックスの色塗りフラグ
  int vertexMoveFlag;       //バーテックスの移動フラグ
  int vertexMoveFLAGX;      //バーテックスのx向き移動フラグ
  int vertexMoveFLAGY;      //バーテックスのy向き移動フラグ

  Vertex() {
    vertexVX=(float)random(1, 3);
    vertexVY=(float)random(1, 3);
    vertexMoveFLAGX=(int)random(2);
    vertexMoveFLAGY=(int)random(2);
  }


  ///////////バーテックスを描く/////////////////////////////////////////////////////
  void display() {
    vertexCount=0;
    if (beginShapeFLAG!=0) {
      if (vertexFillFlag==1) {
        fill(0, 255, 255, 80);
      } else {
        noFill();
      }
      stroke(0);
      beginShape();
      for (int v2=0; v2<500; v2++) {
        if (vertexX[v2]==0 && vertexY[v2]==0) {
          if (lastVertexFlag==1) {
            vertex(vertexX[0], vertexY[0]);
            vertexCount++;
          }
          break;
        }
        vertex(vertexX[v2], vertexY[v2]);
        vertexCount++;
      }
      endShape();
      //跳ね返り判定
      if (lastVertexFlag==1 && vertexMoveFlag==1) {
        //上下左右端の座標取得
        MaxX = vertexX[0];
        minX = vertexX[0];
        MaxY = vertexY[0];
        minY = vertexY[0];
        for (int v=0; v<vertexCount-1; v++) {
          if (MaxX<vertexX[v]) MaxX=vertexX[v];
          if (minX>vertexX[v]) minX=vertexX[v];
          if (MaxY<vertexY[v]) MaxY=vertexY[v];
          if (minY>vertexY[v]) minY=vertexY[v];
        }
        for (int v=0; v<vertexCount-1; v++) {
          DistX[v]=MaxX-vertexX[v];
          DistY[v]=MaxY-vertexY[v];
          distX[v]=vertexX[v]-minX;
          distY[v]=vertexY[v]-minY;
        }
        //xの跳ね返り判定
        if (MaxX>width) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexX[v]=width-DistX[v];
          }
          vertexMoveFLAGX=1;
        }
        if (minX<0) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexX[v]=0+distX[v];
          }
          vertexMoveFLAGX=0;
        }
        if (vertexMoveFLAGX==0) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexX[v]=vertexX[v]+vertexVX;
          }
        }
        if (vertexMoveFLAGX==1) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexX[v]=vertexX[v]-vertexVX;
          }
        }
        //yの跳ね返り判定
        if (MaxY>height) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexY[v]=height-DistY[v];
          }
          vertexMoveFLAGY=1;
        }
        if (minY<0) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexY[v]=0+distY[v];
          }
          vertexMoveFLAGY=0;
        }
        if (vertexMoveFLAGY==0) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexY[v]=vertexY[v]+vertexVY;
          }
        }
        if (vertexMoveFLAGY==1) {
          for (int v=0; v<vertexCount-1; v++) {
            vertexY[v]=vertexY[v]-vertexVY;
          }
        }
      }
    }
  }
  /////////バーテックスの頂点座標を決定///////////////////////////////////////////////
  void pressed() {
    if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>120 || scaleMouseY<90) {
      vertexClass[U].vertexFlag=1;
      if (vertexClass[U].vertexFlag==1) {
        if (vertexClass[U].beginShapeFLAG==0) {
          vertexClass[U].beginShapeFLAG=1;
          vertexClass[U].vertexX[V]=scaleMouseX;
          vertexClass[U].vertexY[V]=scaleMouseY;
          output.println("  vertexX["+U+"]["+V+"]="+vertexClass[U].vertexX[V]+";");
          output.println("  vertexY["+U+"]["+V+"]="+vertexClass[U].vertexY[V]+";");
          V++;
        } else if (vertexClass[U].beginShapeFLAG==1) {
          vertexClass[U].vertexX[V]=scaleMouseX;
          vertexClass[U].vertexY[V]=scaleMouseY;
          output.println("  vertexX["+U+"]["+V+"]="+vertexClass[U].vertexX[V]+";");
          output.println("  vertexY["+U+"]["+V+"]="+vertexClass[U].vertexY[V]+";");
          V++;
        }
      }
    }
  }

  void key() {
    lastVertexFlag=1;
    U++;
    V=0;
    vertexFlag=1;
  }
}