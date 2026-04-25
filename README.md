# SWITCH REEL SIDE VISION
### ACF 1, 2, 3(ver3.68.00)
#### LINK : https://marin0806.tistory.com/204
#### PASSWORD : vision_project1
#### SCREEN : 1, 2, 3

### ACF 4(ver4.69.00)
#### LINK : https://marin0806.tistory.com/205 : ACF 4
#### PASSWORD : vision_project2
#### SCREEN : 1, 2, 3, 4

# 구성
### SCREEN1 : FRAME
### SCREEN2 : PRE SEALING
### SCREEN3 : POST SEALING
### SCREEN4 : FRAME2(ver4.69.00 추가)

# 설명
## 1. MEASURE(치수측정)
### 1) WHITE to BLACK or BLACK to WHITE 기반 검사
### 2) 픽셀과 주변 픽셀(기본 5픽셀) 차이 : 차이 > uiConfrimLengthVetical or uiConfirmLengthHorizon(SCREEN 및 가로, 세로에 따라 변동있음)
### 3) 의 픽셀값 차이가 설정값보다 높을 경우 : 설정값 > uiImgDiffVal
### 4) 엣지 후보로 하고 : 엣지 후보 > uiLength++
### 5) 엣지 후보들이 설정값보다 많아진 경우 엣지로 확정한다 : 설정값 > uiConfirmLength
---------------------------------------------------------------------------------------------------------------------------------------
## 2. SUMMARY(요약표)
### 1) SUMMARY 1 : 우클릭 팝업 요약표 
#### - 구성 : ListCtrl, StaticText
#### - Summary1 Dlg 및 파일 추가됨
#### - 검사시에만 업데이트 됨
#### - 최대 100 행까지 저장되며, 이후 가장 위의 행을 지속적으로 삭제
#### - 현재 지정된 SCREEN 기준으로만 업데이트 됨
### 2) SUMMARY 2 : 우하단 고정 요약표 
#### - 구성 : ListCtrl
#### - Summary2 Dlg 및 파일 추가됨
#### - SUMMARY 1 은 누적형인 반면 SUMMARY 2는 실시간 업데이트 형이라는 차이가 있음
#### - 테스트 및 검사시에만 업데이트 됨(계속 업데이트 시 반짝거림 문제있음)
#### - 파라미터상 COL(열) 개수 기준으로 요약표의 열 개수를 업데이트 함
---------------------------------------------------------------------------------------------------------------------------------------
## 3. PARAMETER(파라미터)
### 1) ALL INFO
#### - 기존 파라미터 창은 개별적으로만 설정 가능, 가독성이 떨어지다는 고객사 지적으로 새로운 파라미터 창 설계
#### - AllInfo Dlg 및 파일 추가됨
#### - 주요기능으로는 각 스크린에 맞게 ListCtrl을 동적으로 생성
##### > 예1) SCREEN1 : PKG 별 PATTERN, MEASURE 검사 > PKG GROUP 상 PATTERN LIST, MEASURE LIST 생성(총 2개)
##### > 예2) SCREEN2 : PKG 별 PATTERN, BRIGHTNESS, MEASURE 검사 > PKG GROUP 의 PATTERN LIST, BRIGHTNESS LIST, MEASURE LIST 생성(총 3개)
### 2) SET
#### - SETTING BUTTON : 개별 PKG 파라미터 저장 기능
#### - ALL SET BUTTON : 1번 PKG를 기준으로 전체 PKG 파라미터 저장 기능
### 3) 추가기능
#### - SUMMARY BUTTON : SUMMARY 1 창을 띄우는 버튼(파라미터 설정 시 기존 데이터를 기준으로 설정을 하기 때문에 이를 반영하여 편의기능 제공)
