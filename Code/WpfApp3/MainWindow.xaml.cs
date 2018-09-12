using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Diagnostics;

namespace WpfApp3
{

    /// <summary>
    /// MainWindow.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class MainWindow : Window
    {

        FileManager manager;
        private string robotType;
        private int Sspeed;
        private int LRspeed;
        private int Uspeed;
        private int Xspeed;
        private string Glass;
        private int HandA;
        private double Arm;
        private int Armspeed;
        private int LDUD;
        private int LDUdspeed;
        private int X;
        private int U;
        private int S;
        private int Linkspeed;

        //etc 부분 add at 08/25/18
        private double vacTime;
        private double stableTime; 
        private double commTime;

        private int _ROUND_COUNT = 2; //반올림 자리 수.
        private static string _MSG_ROBOTTYPEERR = "Robot Type가 선택되지 않았습니다.";
        private static string _MSG_NULLINPUTERR = "INPUT란에 공백 또는 문자가 있으면 안됩니다.";
        private static string _MSG_UNKNOWNERR = "알수없는 오류, 관리자에게 문의하세요 오류코드 01";
        private static string _MSGERRWINDOW = "ERROR!!!";

        public MainWindow()
        {
            InitializeComponent();
            init();
            
        }

        private void init()
        {
            string uri = Environment.CurrentDirectory + "\\Resources\\images\\img02.png";
            ImageSource img = new BitmapImage(new Uri(uri));
            if (img != null)
            {
                imageBox.Source = img;
            }
 
            manager = new FileManager();
            
            for (int i = 0; i < manager.getSizeOfRobot(); i++) {
                inputRobotType.Items.Add(manager.getRobot(i).getRobotName());
            }
            for (int i = 0; i < manager.getOffsetValSize(); i++) {
                inputOffsetVal.Items.Add(manager.getOffsetVal(i));
            }

        }

        private void OnClickcCalculateValues(object sender, RoutedEventArgs e)
        {
            if (!insertValues())
            {

            }
            else {
                writeToDataFoam();
                calculateValues();
            }
            
        }

        private void calculateValues() // 수정됨 (08/25/18)
        {
            resultLdUldArmFoword.Text = Convert.ToString(roundValues(calculate(1), _ROUND_COUNT));
            resultLdUldUpDown.Text = Convert.ToString(roundValues(addVacTime(calculate(2)), _ROUND_COUNT));
            resultLdUldArmBackword.Text = Convert.ToString(roundValues(calculate(3), _ROUND_COUNT));
            resultLdUldTactTime.Text = Convert.ToString(roundValues(calculate(1) + calculate(2) + calculate(3), _ROUND_COUNT));
            resultMovingRobotTraverse.Text = Convert.ToString(roundValues(calculate(4), _ROUND_COUNT));
            resultMovingRobotRoll.Text = Convert.ToString(roundValues(calculate(5), _ROUND_COUNT));
            resultMovingUpDown.Text = Convert.ToString(roundValues(calculate(6), _ROUND_COUNT));
            resultMovingTotal.Text = Convert.ToString(roundValues(compareValues(calculate(4), calculate(5), calculate(6)), _ROUND_COUNT));
        }

        private double compareValues(double val1, double val2, double val3)
        {
            double max = val1;
            double[] val = new double[2];
            val[0] = val2;
            val[1] = val3;
            for (int i = 0; i < 2; i++)
            {
                if (max < val[i])
                {
                    max = val[i];
                }
            }

            return max;
        }

        private double roundValues(double receivedValue, int digits) {//결과값들을 반올림하는 함수, 두번째 파라메터 digits에 반올림 자리 수를 입력 한다.
            return Math.Round(receivedValue, digits);
        }
        private double addVacTime(double receivedValue) { // ADD IN 08/25/18
            return receivedValue + vacTime;
        }

        private double calculate(int type)
        {
            double v, y, Ta, x = 0;
            switch (type)
            {
                case 1:
                    {
                        v = calculateV(2);
                        Ta = manager.getRobotSelectedName(robotType).getLrShaftAcceleration();
                        y = v * Ta;  
                        x = Arm;
                        break;
                    }
                case 3:
                    {
                        v = calculateV(2);
                        Ta = manager.getRobotSelectedName(robotType).getLrShaftAcceleration();
                        y = v * Ta;
                        x = Arm;
                        break;
                    }
                case 2:
                    {
                        v = calculateV(5);
                        Ta = manager.getRobotSelectedName(robotType).getUShaftAcceleration();
                        y = v * Ta;
                        x = LDUD;
                        break;
                    }
                case 6:
                    {
                        v = calculateV(3);
                        Ta = manager.getRobotSelectedName(robotType).getUShaftAcceleration();
                        y = v * Ta;
                        x = U;
                        break;
                    }
                case 4:
                    {
                        v = calculateV(4);
                        Ta = manager.getRobotSelectedName(robotType).getMovingShaftAcceleration();
                        y = v * Ta;
                        x = X;
                        break;
                    }
                case 5:
                    {
                        v = calculateV(1);
                        Ta = manager.getRobotSelectedName(robotType).getSShaftAcceleration();
                        y = v * Ta;
                        x = S;
                        break;
                    }
                default: return 0;
            }
            if (y > x)//최종 출력값에다가  안정 통신시간을 더한다 (08/25/18)
            {
                return (Math.Pow(Convert.ToDouble((x * Ta) / v), 0.5) * 2 )+ stableTime + commTime;
            }

            else
            {
                return (2 * Ta + (x - v * Ta) / v) + stableTime + commTime;
            }
        }

        private double calculateV(int type)
        {
            switch (type)
            {
                case 1: return manager.getRobotSelectedName(robotType).getSShaftSpeed() * (Armspeed * 0.01);
                case 2: return manager.getRobotSelectedName(robotType).getLrShaftSpeed() * (Armspeed * 0.01);
                case 3: return manager.getRobotSelectedName(robotType).getUShaftSpeed() * (Armspeed * 0.01);
                case 4: return manager.getRobotSelectedName(robotType).getMovingShaftSpeed() * (Armspeed * 0.01);
                case 5: return manager.getRobotSelectedName(robotType).getUShaftSpeed() * (LDUdspeed * 0.01);
                default:
                    return 0;
            }
        }

        private void writeToDataFoam()
        {
            dataType.Text = robotType;
            dataSspeed.Text = Convert.ToString(Sspeed);
            dataLRspeed.Text = Convert.ToString(LRspeed);
            dataUspeed.Text = Convert.ToString(Uspeed);
            dataXspeed.Text = Convert.ToString(Xspeed);
            dataGlass.Text = Convert.ToString(Glass);
            dataHandA.Text = Convert.ToString(HandA);
            dataArm.Text = Convert.ToString(Arm);
            dataArmspeed.Text = Convert.ToString(Armspeed);
            dataLDUD.Text = Convert.ToString(LDUD);
            dataLDUdspeed.Text = Convert.ToString(LDUdspeed);
            dataX.Text = Convert.ToString(X);
            dataU.Text = Convert.ToString(U);
            dataS.Text = Convert.ToString(S);
            dataLinkspeed.Text = Convert.ToString(Linkspeed);

        }

        private bool insertValues() //exception 추가 in (08/25/18) 
        {
            robotType = (string)inputRobotType.SelectedItem;
            if (robotType == null) {
                MessageBox.Show(_MSG_ROBOTTYPEERR, _MSGERRWINDOW);
                return false;
            }

            try
            {
                Sspeed = (int)manager.getRobotSelectedName(robotType).getSShaftSpeed();
                LRspeed = (int)manager.getRobotSelectedName(robotType).getLrShaftSpeed();
                Uspeed = (int)manager.getRobotSelectedName(robotType).getUShaftSpeed();
                Xspeed = (int)manager.getRobotSelectedName(robotType).getMovingShaftSpeed();
                Glass = inputGlassX.Text + " X " + inputGlassY.Text;
                HandA = Convert.ToInt32(inputHandSep.Text);
                Arm = Convert.ToDouble(inputDistanceToCenter.Text) - (Convert.ToDouble(inputGlassX.Text) * Convert.ToDouble(inputHandSep.Text) + (100 * Convert.ToDouble(inputGlassY.Text)) + (200 * Convert.ToDouble(inputGlassX.Text)) + (Math.Pow(Convert.ToDouble(inputHandSep.Text), Convert.ToDouble(2.0))) + (200 * Convert.ToDouble(inputHandSep.Text)) + 50000) / (2 * (Convert.ToDouble(inputGlassY.Text) + Convert.ToDouble(inputHandSep.Text) + 100));
                Armspeed = Convert.ToInt32(inputMovingSpeed.Text);
                LDUD = Convert.ToInt32(inputCstEqDistance.Text);
                LDUdspeed = Convert.ToInt32(inputLdUdSpeed.Text);
                X = Convert.ToInt32(inputOffsetMoveAmount.Text);
                U = Convert.ToInt32(inputULinkMoveAmount.Text);
                S = Convert.ToInt32(inputSLinkMoveAmount.Text);
                Linkspeed = Convert.ToInt32(inputMovingSpeed.Text);

                //added at 8/25/18
                vacTime = Convert.ToDouble(inputVacTime.Text);
                stableTime = Convert.ToDouble(inputStableTime.Text);
                commTime = Convert.ToDouble(inputCommTime.Text);

                return true;
            }
            catch (NullReferenceException nullExcept)   //ROBOT을 선택하지 않았을 경우
            {
                MessageBox.Show(_MSG_NULLINPUTERR, _MSGERRWINDOW);
                return false;
            }
            catch (FormatException e)   // TEXTBOT 에 아무것도 입력이 안되었을 경우
            {   
                MessageBox.Show(_MSG_NULLINPUTERR, _MSGERRWINDOW);
                return false;
            }
            catch (Exception e)     //uncaugh error
            {
                MessageBox.Show(_MSG_UNKNOWNERR, _MSGERRWINDOW);
                return false;
            }
            
    }

        private void OnClickExit(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void onClickRadio(object sender, RoutedEventArgs e)
        {
            string uri;
            if(radioHand.IsChecked == true)
            {
                uri = Environment.CurrentDirectory + "\\Resources\\images\\img01.png";
            }
            else if(radioGraph.IsChecked == true)
            {
                uri = Environment.CurrentDirectory + "\\Resources\\images\\img02.png";
            }
            else
            {
                return;
            }
            ImageSource img = new BitmapImage(new Uri(uri));
            if (img == null) {
                return;
            }
            imageBox.Source = img;
        }

        private void inputEnterKeyDown(object sender, KeyEventArgs e)   //입력란에 엔터키를 입력한 경우 add in (08/25/18)
        {
            if (e.Key == Key.Return) {
                OnClickcCalculateValues(sender,null);
            }
            
        }
    }

}
