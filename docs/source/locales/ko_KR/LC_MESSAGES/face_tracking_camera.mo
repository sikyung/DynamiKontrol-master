??          T               ?      ?      ?   ?   ?   ?   N  C  ?     /  ~  ;     ?     ?  ?   ?  ?   ?  ?  ?     W   Explanation Face Tracking Camera Face tracking algorithm is not included in DynamiKontrol package. So we use Mediapipe face tracking solution for face tracking and OpenCV for streaming webcam. If cx < 0.4, face is located in the left of the image, camera should move to left, and it means the motor should move to clockwise(+). Otherwise vice versa. Let's define x1, x2 are top left point and bottom right point of face bounding box, then cx would be center point of the face. Mediapipe face tracking solution returns relative coordinates of the input image, so range of cx would be 0.0 to 1.0. For instance, if your face is located in exact center of the image, cx is 0.5. Source Code Project-Id-Version: DynamiKontrol 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-03-08 20:11+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ko_KR
Language-Team: ko_KR <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 설명 얼굴 추적 카메라 DynamiKontrol에는 얼굴 추적 알고리즘이 포함되어 있지 않습니다. 따라서 Mediapipe의 Face tracking solution을 사용하였고, OpenCV를 사용하여 웹캠을 제어합니다. 만약 ``cx < 0.4`` 이면 이미지의 왼쪽에 얼굴이 위치하는 것이고, 카메라는 왼쪽으로 회전해야 합니다. 이것은 모터가 시계방향으로 움직이는 것을 뜻합니다. ``cx > 0.6`` 이면 반대로 움직입니다. ``x1``, ``x2`` 를 각각 얼굴 바운딩 박스의 왼쪽 위 좌표, 오른쪽 아래 좌표라고 가정하고, ``cx`` 를 얼굴의 중심 좌표라고 가정합시다. Mediapipe는 좌표를 입력 이미지의 상대 좌표로 반환하므로 ``cx`` 의 값 범위는 ``0.0`` 에서 ``1.0`` 사이가 될 것입니다. 예를 들어 이미지 안에서 얼굴이 정중앙에 위치한다면 ``cx`` 의 값은 ``0.5`` 가 됩니다. 소스코드 