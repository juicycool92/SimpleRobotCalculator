   M S B A M L   `   `   `  ���� B  >WpfApp3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp3WpfApp3      WpfApp3.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:WpfApp3       � Title$/  )4-LInk Robot Tact Time Calculator ver 2.1��$��820.175��$��545.696�� � Icon$ icon.png��.���  J� RenderTransformOrigin$ 0.467,0.612&� � ColumnDefinitions �� $	��28* ��� $
��124* ��� $
��108* ��� $��9* �.+��� ���	#FFECF9FF$
��Left=�$	��354��$��	10,35,0,0q����	#FFB1B1B1$	��Top=�$	��247��$��2���� -    ��Name$ imageBox��$
��Left=�$	��301��$��
206,35,0,0q�$	��Top=�$	��262��$��3��$��1��	� -    	�Name$ 	radioHand��$
��Hand��$
��Left=�$��
30,341,0,0q�$	��Top=�$��16��$��80��$��2��	� -   $ 
radioGraph��$��Graph��$
��Left=�$��110,341,0,0q�$	��Top=�$��16��$��80��$��2���� $��INPUT��$
��Left=�$��30��$��	10,10,0,0q�$	��Top=�$��52��$��14(�$��UltraExpanded&�&   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�$��2���� $
��Type��$
��Left=�$��	14,35,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��Moving Speed (%)��$
��Left=�$��	14,57,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��LD/UD Speed (%)��$
��Left=�$��	14,79,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��가정화 시간 (sec)��$
��Left=�$��
14,101,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��Glass X (mm)��$
��Left=�$��
14,128,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��Glass Y (mm)��$
��Left=�$��
14,150,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��23��$��1���� $��Hand 이격거리 (mm)��$
��Left=�$��
14,173,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��CST/EQ 내 이동량��$
��Left=�$��
14,195,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��Center간 거리 (mm)��$
��Left=�$��
14,222,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��23��$��1���� $��주행축 이동량 (mm)��$
��Left=�$��
14,245,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��U축 이동량(mm)��$
��Left=�$��
14,267,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��S축 회전량 (deg)��$
��Left=�$��
14,289,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��Vac Time (sec)��$
��Left=�$��
14,316,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��안정화 시간 (sec)��$
��Left=�$��
14,338,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��Robot��$
��Left=�$��88��$��	10,35,0,0q�$	��Top=�$��60��$ Display=����	#FFCECECE   TextHintingMode$ Animated=�$��14(�$��Center=�$��Center=�$��2���� $��Layout��$
��Left=�$��88��$��
10,129,0,0q�$	��Top=�$��60��$ Display=����	#FFCECECE$ Animated=�$��14(�$��Center=�$��Center=�$��2���� $��Moving��$
��Left=�$��88��$��
10,222,0,0q�$	��Top=�$��60��$ Display=����	#FFCECECE$ Animated=�$��14(�$��Center=�$��Center=�$��2���� $	��ETC��$
��Left=�$��63��$��
10,320,0,0q�$	��Top=�$��60��$ Display=����	#FFCECECE$ Animated=�$��14(�$��Center=�$��Center=�$��2���� ���	#FFFFFEEC$
��Left=�$	��333��$��
10,434,0,0q����	#FFA5A5A5$	��Top=�$	��265��$��2���� $
��DATA��$
��Left=�$��32��$��
10,410,0,0q�$	��Top=�$��52��$��14(�$��2���� $
��Type��$
��Left=�$��
14,433,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��S축 Speed (mm/s)��$
��Left=�$��
14,454,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��L/R Speed (mm/s)��$
��Left=�$��
14,475,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��U축 Speed (mm/s)��$
��Left=�$��
14,496,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��주행축 Speed (mm/s)��$
��Left=�$��
14,517,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��
Glass Size��$
��Left=�$��
14,544,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��이격거리 (mm)��$
��Left=�$��
14,566,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��Arm 이동량��$
��Left=�$��
14,591,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��
Arm 속도��$
��Left=�$��
14,612,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��	LD/UD 량��$
��Left=�$��
14,634,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��LD/UD 속도��$
��Left=�$��
14,655,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��주행축 이동량 (mm)��$
��Left=�$��
14,685,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��U축 이동량 (mm)��$
��Left=�$��
14,702,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� $��S축 이돌량 (deg)��$
��Left=�$��
14,723,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��22��$��1���� $��Robot��$
��Left=�$	��105��$��
10,433,0,0q�$	��Top=�$��60��$ Display=����	#FFCECECE$ Animated=�$��14(�$��Center=�$��Center=�$��2���� $
��Hand��$
��Left=�$��43��$��
10,544,0,0q�$	��Top=�$��60��$ Display=����	#FFCECECE$ Animated=�$��14(�$��Center=�$��Center=�$��2���� $��LD/UD��$
��Left=�$��85��$��
10,591,0,0q�$	��Top=�$��60��$ Display=����	#FFCECECE$ Animated=�$��14(�$��Center=�$��Center=�$��2���� $��Moving��$
��Left=�$��81��$��
10,685,0,0q�$	��Top=�$��60��$ Display=����	#FFCECECE$ Animated=�$��14(�$��Center=�$��Center=�$��2���� -    ��Name$ inputRobotType��$
��Left=�$��22��$��	63,35,0,0q�$	��Top=�$	��135��$��Right=�$��Center=�$��1���� -   	 ��Name$	 inputMovingSpeed��$
��Left=�$��23��$��
118,57,0,0q�
 �� TextWrapping$

 Wrap=�$	��Top=�$��80��$��Right=�$��Center=�$��1���� $
��Left=�$��23��$��
118,80,0,0q�$

 Wrap=�$��TextBox��$	��Top=�$��80��$��1���� -   $	 inputLdUdSpeed��$
��Left=�$��23��$��
118,80,0,0q�$

 Wrap=�$��
��$	��Top=�$��80��$��Right=�$��Center=�$��1���� -   $ inputOffsetVal��$
��Left=�$��22��$��118,103,0,0q�$	��Top=�$��80��$��Right=�$��Center=�$��1���� -   $	 inputGlassX��$
��Left=�$��23��$��118,130,0,0q�$

 Wrap=�$	��Top=�$��80��$��Right=�$��Center=�$��1���� -	   $	 inputGlassY��$
��Left=�$��23��$��118,153,0,0q�$

 Wrap=�$	��Top=�$��80��$��Right=�$��Center=�$��1���� -
   $	 inputHandSep��$
��Left=�$��23��$��118,176,0,0q�$

 Wrap=�$	��Top=�$��80��$��Right=�$��Center=�$��1���� -   $	 inputCstEqDistance��$
��Left=�$��23��$��118,195,0,0q�$

 Wrap=�$	��Top=�$��80��$��Right=�$��Center=�$��1���� -   $	 inputDistanceToCenter��$
��Left=�$��23��$��118,223,0,0q�$

 Wrap=�$	��Top=�$��80��$��Right=�$��Center=�$��1���� -   $	 inputOffsetMoveAmount��$
��Left=�$��23��$��118,244,0,0q�$

 Wrap=�$	��Top=�$��80��$��Right=�$��Center=�$��1���� -   $	 inputULinkMoveAmount��$
��Left=�$��23��$��118,266,0,0q�$

 Wrap=�$	��Top=�$��80��$��Right=�$��Center=�$��1���� -   $	 inputSLinkMoveAmount��$
��Left=�$��23��$��118,287,0,0q�$

 Wrap=�$	��Top=�$��80��$��Right=�$��Center=�$��1���� -   $	 inputVacTime��$
��Left=�$��23��$��118,315,0,0q�$

 Wrap=�$	��Top=�$��80��$��Right=�$��Center=�$	��0.5��$��1���� -   $	 inputStableTime��$
��Left=�$��23��$��118,337,0,0q�$

 Wrap=�$	��Top=�$��80��$��Right=�$��Center=�$	��0.4��$��1���� $��축 속도(%)��$
��Left=�$��
14,745,0,0q�$	��Top=�$	��120��$��Microsoft YaHei)�$��10(�$��21��$��1���� ���	#FFECFFEC$
��Left=�$	��309��$��	1,426,0,0q����	#FFA6A6A6$	��Top=�$	��214��$��2���� $��Result��$
��Left=�$��33��$��	1,393,0,0q�$	��Top=�$��69��$��18(�$��2���� $��LD/ULD Tact Time��$
��Left=�$��23��$��	8,430,0,0q�$	��Top=�$	��197��$ Display=����	#FFBCCEFF$ Animated=�$��13(�$��2���� -   $	 dataType��$
��Left=�$��22��$��124,434,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 
dataSspeed��$
��Left=�$��22��$��124,456,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 dataLRspeed��$
��Left=�$��22��$��124,477,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 
dataUspeed��$
��Left=�$��22��$��124,499,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 
dataXspeed��$
��Left=�$��23��$��124,521,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 	dataGlass��$
��Left=�$��22��$��124,548,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 	dataHandA��$
��Left=�$��22��$��124,570,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 dataArm��$
��Left=�$��22��$��124,592,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 dataArmspeed��$
��Left=�$��22��$��124,612,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 dataLDUD��$
��Left=�$��22��$��124,633,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 dataLDUdspeed��$
��Left=�$��22��$��124,654,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 dataX��$
��Left=�$��22��$��124,681,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 dataU��$
��Left=�$��23��$��124,703,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -   $	 dataS��$
��Left=�$��22��$��124,725,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� -    $	 dataLinkspeed��$
��Left=�$��22��$��124,745,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��1���� $��Moving Tact Time��$
��Left=�$��25��$��	8,581,0,0q�$	��Top=�$	��197��$ Display=����	#FFBCCEFF$ Animated=�$��13(�$��2���� $��
Arm Foword��$
��Left=�$��	8,479,0,0q�$	��Top=�$	��100��$��Microsoft YaHei)�$��10(����	#FFEBEBEB���	#FFA3A3A3$��21��$��2���� -!   $	 resultLdUldArmFoword��$
��Left=�$��21��$��110,480,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��2���� $��UP/Down��$
��Left=�$��	8,500,0,0q�$	��Top=�$	��100��$��Microsoft YaHei)�$��10(����	#FFEBEBEB���	#FFA3A3A3$��21��$��2���� -"   $	 resultLdUldUpDown��$
��Left=�$��21��$��110,501,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��2���� $��Arm Backword��$
��Left=�$��	8,520,0,0q�$	��Top=�$	��100��$��Microsoft YaHei)�$��10(����	#FFEBEBEB���	#FFA3A3A3$��21��$��2���� -#   $	 resultLdUldArmBackword��$
��Left=�$��21��$��110,521,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��2���� $��	Operation��$
��Left=�$��	8,458,0,0q�$	��Top=�$	��102��$��Microsoft YaHei)�$��10(����	#FFBDBDBD���	#FFA3A3A3$��Center=�$��21��$��2���� $��	Tact Time��$
��Left=�$��110,458,0,0q�$	��Top=�$��95��$��Microsoft YaHei)�$��10(����	#FFBDBDBD���	#FFA3A3A3$��Center=�$��21��$��2���� $��Total��$
��Left=�$��	8,541,0,0q�$	��Top=�$	��100��$��Microsoft YaHei)�$��16(����	#FFEBEBEB���	#FFA3A3A3$��29��$��Center=�$��Center=�$��2���� -$   $	 resultLdUldTactTime��$
��Left=�$��29��$��110,542,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��16(�$��2���� $��Robot Traverse��$
��Left=�$��	8,631,0,0q�$	��Top=�$	��100��$��Microsoft YaHei)�$��10(����	#FFEBEBEB���	#FFA3A3A3$��21��$��2���� -%   $	 resultMovingRobotTraverse��$
��Left=�$��21��$��110,632,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��2���� $��
Robot Roll��$
��Left=�$��	8,652,0,0q�$	��Top=�$	��100��$��Microsoft YaHei)�$��10(����	#FFEBEBEB���	#FFA3A3A3$��21��$��2���� -&   $	 resultMovingRobotRoll��$
��Left=�$��21��$��110,653,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��2���� $��Robot Up/Down��$
��Left=�$��	8,673,0,0q�$	��Top=�$	��100��$��Microsoft YaHei)�$��10(����	#FFEBEBEB���	#FFA3A3A3$��21��$��2���� -'   $	 resultMovingUpDown��$
��Left=�$��22��$��110,673,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��2���� $��	Operation��$
��Left=�$��	8,610,0,0q�$	��Top=�$	��102��$��Microsoft YaHei)�$��10(����	#FFBDBDBD���	#FFA3A3A3$��Center=�$��21��$��2���� $��	Tact Time��$
��Left=�$��110,610,0,0q�$	��Top=�$��95��$��Microsoft YaHei)�$��10(����	#FFBDBDBD���	#FFA3A3A3$��Center=�$��21��$��2���� $��Total��$
��Left=�$��	8,694,0,0q�$	��Top=�$	��100��$��Microsoft YaHei)�$��16(����	#FFEBEBEB���	#FFA3A3A3$��28��$��Center=�$��Center=�$��2���� -(   $	 resultMovingTotal��$
��Left=�$��28��$��110,695,0,0q�$

 Wrap=�$	��Top=�$��95��$��Right=�$��Center=�$��16(�$��2���� -)    ��Name$ btnCalculate��$��	Calculate��$
��Left=�$��21��$��	0,746,0,0q�$	��Top=�$��86��$��2���� -*   $
��EXIT��$
��Left=�$��21��$��129,745,0,0q�$	��Top=�$��86��$��2���� $��통신 시간 (sec)��$
��Left=�$��
14,361,0,0q�$	��Top=�$	��110��$��Microsoft YaHei)�$��10(�$��22��$��1���� -+   $	 inputCommTime��$
��Left=�$��23��$��118,360,0,0q�$

 Wrap=�$	��Top=�$��80��$��Right=�$��Center=�$	��0.5��$��1��