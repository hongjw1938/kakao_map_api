### 17. DAUM 지도 API사용해보기
* <a href="http://apis.map.daum.net/">다음 API 사이트</a>
* <a href="http://apis.map.daum.net/web/documentation/">Documentation</a>
* 사용
    - 앱을 만든다.
    - 우선 기본적인 workspace로 project를 만든 다음 해당 도메인을 플랫폼으로 등록한다.
    - 좌측의 Javascript 개발가이트의 지도를 클릭하고 지도생성하기의 script코드를 가져온다.
    - script의 src 부분에서 javascript api key를 등록한다.
    - 코드(index.html.erb)
        - <pre><code>
            <div id="map" style="width:100%;height:350px;"></div>
                <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=나의 api키 등록"></script>
                <script>
                var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                    mapOption = { 
                        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                        level: 3 // 지도의 확대 레벨
                    };
                
                // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
                var map = new daum.maps.Map(mapContainer, mapOption); 
                </script>
        </code></pre>
    - 외의의 다른 추가적인 이벤트 등도 모두 sample을 참조하면 됨.