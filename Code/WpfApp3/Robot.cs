using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp3
{
    class Robot
    {
        private string robotName;
        private double sShaftSpeed;
        private double sShaftAcceleration;
        private double lrShaftSpeed;
        private double lrShaftAcceleration;
        private double uShaftSpeed;
        private double uShaftAcceleration;
        private double movingShaftSpeed;
        private double movingShaftAcceleration;

        public Robot(string robotName, double sShaftSpeed, 
            double sShaftAcceleration, double lrShaftSpeed, 
            double lrShaftAcceleration,double uShaftSpeed, 
            double uShaftAcceleration, double movingShaftSpeed, 
            double movingShaftAcceleration) {
            this.robotName = robotName;
            this.sShaftSpeed = sShaftSpeed;
            this.sShaftAcceleration = sShaftAcceleration;
            this.lrShaftSpeed = lrShaftSpeed;
            this.lrShaftAcceleration = lrShaftAcceleration;
            this.uShaftSpeed = uShaftSpeed;
            this.uShaftAcceleration = uShaftAcceleration;
            this.movingShaftSpeed = movingShaftSpeed;
            this.movingShaftAcceleration = movingShaftAcceleration;
        }
        public string getRobotName()
        {
            return robotName;
        }
        public double getSShaftSpeed()
        {
            return sShaftSpeed;
        }
        public double getSShaftAcceleration()
        {
            return sShaftAcceleration;
        }
        public double getLrShaftSpeed()
        {
            return lrShaftSpeed;
        }
        public double getLrShaftAcceleration()
        {
            return lrShaftAcceleration;
        }
        public double getUShaftSpeed()
        {
            return uShaftSpeed;
        }
        public double getUShaftAcceleration()
        {
            return uShaftAcceleration;
        }
        public double getMovingShaftSpeed()
        {
            return movingShaftSpeed;
        }
        public double getMovingShaftAcceleration()
        {
            return movingShaftAcceleration;
        }
    }
}
