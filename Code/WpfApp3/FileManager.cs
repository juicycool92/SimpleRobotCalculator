using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Collections;
using System.Diagnostics;

namespace WpfApp3
{
    class FileManager
    {
        private string filePath = null;
        int nCount = 0;
        string path;
        StreamReader file;
        private List<Robot> RobotList;
        private List<string> offsetVal;

        public FileManager() {
            path =  System.IO.Directory.GetCurrentDirectory() + "\\Resources\\robot.txt";
            readRobotFile();
            offsetVal = new List<string>();
            offsetVal.Add("가정치 제외");
            offsetVal.Add("평균화 시간");
            offsetVal.Add("ｋｐ치");
            offsetVal.Add("위치결정시간");
            offsetVal.Add("가정치 합");
        }
        public void readRobotFile() {
            String line;
            RobotList = new List<Robot>();
            file = new StreamReader(path);

            while ((line = file.ReadLine()) != null) {
                System.Console.WriteLine(line);
                string[] lines = line.Split('\t');
                
                
                if (lines.Length != 9) {
                    Debug.WriteLine("error, readed Robot txt's length isnt 9");
                }
                else
                {
                    RobotList.Add(new Robot(lines[0],Convert.ToDouble(lines[1]), Convert.ToDouble(lines[2])
                        , Convert.ToDouble(lines[3]), Convert.ToDouble(lines[4]), Convert.ToDouble(lines[5])
                        , Convert.ToDouble(lines[6]), Convert.ToDouble(lines[7]), Convert.ToDouble(lines[8])));
                }
                
                nCount++;
                
            }
                        
        }

        public Robot getRobotSelectedName(string inputRobotType)
        {
            foreach (Robot robotIndex in RobotList) {
                if (robotIndex.getRobotName().Equals(inputRobotType))
                    return robotIndex;
            }
            return null;
        }

        public int getSizeOfRobot() { return RobotList.Count(); }
        public Robot getRobot(int i) { return RobotList[i]; }
        public int getOffsetValSize() { return offsetVal.Count(); }
        public string getOffsetVal(int i) { return offsetVal[i]; }
    }
}
