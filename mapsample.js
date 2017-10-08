window.onload = function(){

    if(navigator.geolocation){
        alert('この端末では位置情報が取得できます');
    } else {
        alert('この端末では位置情報が取得できません');
    }

    function getPosition(){
        navigator.geolocation.getCurrentPosition (
            function(position) {
                alert('緯度：'+position.coords.latitude+"、経度"+position.coords.longitude);
            }, 
            function(error) {
                switch(error.code) {
                    case 1:
                        alert("位置情報の利用が許可されていません");
                        break;
                    case 2:
                        alert('現在位置が取得できませんでした');
                        break;
                    case 3:
                        alert("タイムアウトになりました");
                        break;
                    default:
                        alert("その他のエラー(エラーコード)"+error.code+")");
                        break;
                }
            }   
        );
    }

    getPosition();

    
    //yahooマップの設定
    let ymap = new Y.Map("div_map");
    // ymap.drawMap(new Y.LatLng( 35.6811673, 139.7670516 ),  17, Y.LayerSetId.NORMAL);
    ymap.drawMap(new Y.LatLng( 34.965543, 135.697628 ),  17, Y.LayerSetId.NORMAL);
    ymap.setConfigure("scrollWheelZoom", true);
    ymap.setConfigure("continuousZoom", true);

    let markers = [];
    let latlng  = ymap.getCenter();
    let registeredSpots = [];
    let minLat, maxLat, minLng, maxLng;

    if(ymap.isInfoWindowOpen()) {
        ymap.closeInfoWindow();
    }

    if(markers.length>0) {
        ymap.removeFeature(markers[0]);
        markers = [];
    }

    let imageUrl = [
        "./kyoto/img1.jpg", 
        "./kyoto/img2.jpeg", 
        "./kyoto/img3.jpeg", 
        "./kyoto/img4.jpg",
        "./kyoto/img5.jpg"
        ];

    for(let i=0; i<imageUrl.length; i++) {
        let lat, lng;
        switch(i){
            case 0:
                lat = latlng.lat()-0.0016;
                lng = latlng.lng()-0.0004;
                break;
            case 1:
                lat = latlng.lat()+0.002;
                lng = latlng.lng()+0.0014;
                break;
            case 2:
                lat = latlng.lat()+0.001;
                lng = latlng.lng()-0.0028;
                break;
            case 3:
                lat = latlng.lat()+0.003;
                lng = latlng.lng()-0.004;
                break;
            case 4:
                lat = latlng.lat()+0.004;
                lng = latlng.lng()-0.002;
                break;
        }

        let newMarker = new Y.Marker(new Y.LatLng( lat, lng));

        let val = imageUrl[i];
        newMarker.bindInfoWindow("<h3>タイトル</h3>");


        markers.push(newMarker);
        ymap.addFeatures(markers);

        for(let j=0; j<markers.length; j++) {
            let m = markers[j];
            let val = imageUrl[j];

            // m.setDraggable(true);

            let markerDom = m.getDOMNode();
            console.log(markerDom);
            markerDom.src = val;
            markerDom.style.width = "50px";
            markerDom.style.height = "50px";

            m.bind('mouseover', function(){
                markerDom.style.width = "150px";
                markerDom.style.height = "150px";
                markerDom.style.transition = "all 0.2s";
            });

            m.bind('mouseout', function() {
                // setTimeout(function() {
                markerDom.style.width = "50px";
                markerDom.style.height = "50px";

                // },10);
            });

            m.bind('click', function(){
                for(let j of markers){
                    let jDom = j.getDOMNode();
                    jDom.style.width = "50px";
                    jDom.style.height = "50px";
                }
                markerDom.style.width = "150px";
                markerDom.style.height = "150px";
                markerDom.style.transition = "all 0.2s";
            })
        }

    };






    ymap.bind("click", function(latlng) {
        ymap.closeInfoWindow();
        for(let m of markers){
            let markerDom = m.getDOMNode();
            markerDom.style.width = "50px";
            markerDom.style.height = "50px";
        }
    });

    // ymap.bind('zoomend', function(){
    //     console.log(ymap.getBounds());


    //     if(ymap.getZoom()>10) {
    //         minLat = ymap.getBounds().sw.lat();
    //         maxLat = ymap.getBounds().sw.lng();
    //         minLng = ymap.getBounds().ne.lat();
    //         maxLng = ymap.getBounds().ne.lng();
    //         console.log( minLat );

    //         let spotList = [];
    //         $.get('./hogehoge.php', {
    //             'minLat': minLat, 
    //             'maxLat': maxLat, 
    //             'minLng': minLng, 
    //             'maxLng': maxLng
    //         }, function(data){
    //             //帰ってきたスポットをspotsに格納

    //             //帰ってきたデータの設計によってコード変更
    //             // ymap.removeFeature(markers[0]);
    //             for(let val of registeredSpots){
    //                 ymap.removeFeature(val);
    //             }
    //             ymap.removeFeature(registeredSpots);
    //             registeredSpots = data;
    //             console.log(registeredSpots);
    //             for(let val of registeredSpots) {
    //                 console.log(val);
    //                 console.log(JSON.parse(val));

    //                 let newMarker = new Y.Marker(new Y.LatLng( val.lat, val.lng ));
    //                 newMarker.setDraggable(false);
    //                 newMarker.bindInfoWindow(val.name+"\n"+val.comment);
    //                 markers.push(newMarker);

    //             }
    //         });
    //     }
    // });
};