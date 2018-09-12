# SimpleRobotCalculator
this is simple robot's arm move calculator for Yaskawa Co.

Release folder is for customer


CREATE DATE : Feb 10, 2018

UPDATE DATE : AUG 25,2018

CREATOR : 

	Changwon Jeong
  
	Ryu miduem
  
CONTECT : 

	juicycool92@gmail.com
  
	alterpaper@gmail.com
  
VERSION : 2.0.1

UPDATE LOG :

	1.0.1 : 
		EDIT :
			식 수정
      
		EDIT :
			glass폐기
      
	1.0.2 :
  
		EDIT : 
    
			HAND이격거리를 Combobox에서 InputText 로 변경
      
	2.0.0 :
  
		EDIT : 
    
			MFC에서 .NET 으로 전환.
      
	2.0.1 :
  
		ADD :
    
			프로그램 상단에 버전 명시
      
			etc에 기본값을 명시
      
			etc에 통신시간 추가
      
      
		EDIT : 
    
			잘못된 INPUT값을 입력할때 나던 오류 해결
      
		FIX : 
    
			결괏값을 소숫점 2자리 올림으로 수정
      


  USUAGE :
  
    Robot의 프리셋은 robot.txt에서 미리 정의합니다.

    robot.txt에서 각 행은

    로봇타입/s축 스피드/s축 가속도/LR축 스피드/LR축 가속도/U축 스피드/U측 가속도/주행축/주행축 가속도/

    으로 되어있으며, 반드시 tab으로 간격을 내어, 모든 행에 맞게 데이터를 입력합니다. 데이터가 없는경우는 0으로 남겨야 합니다.

    (각각 행 다음은 tab으로 구분합니다)

    올바르지 않은 txt파일 설정은 앱에서 콤보상자가 표시되지 않는 결과를 불러옵니다.








