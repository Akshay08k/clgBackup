using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InheritanceExm
{
    public partial class homepage : System.Web.UI.Page
    {

        public class vehicle
        {
            public String vehicleType,vehicleId;

            public vehicle() {
                vehicleType = "Car";
                vehicleId = "2355";
            }
            public vehicle(String vehicleType,String vID) { 
                this.vehicleType = vehicleType;
                this.vehicleId = vID;
            }

            public String Display()
            {
                return "Type : " + this.vehicleType + "Id : " + this.vehicleId;
            }

        }

        public class car : vehicle
        {
            public String name, model, yearOfP;
            public double price;

            public car(String Vtype,String vId,String name,String model,String yearOfP,double price) {
                this.vehicleType= Vtype;
                this.vehicleId= vId;
                this.name = name;
                this.model = model;
                this.yearOfP = yearOfP;
                this.price = price;
                
            }

            public car() {
                this.vehicleType = "Type";
                this.vehicleId = "Id123";
                this.name = "URUS";
                this.model = "s7";
                this.yearOfP = "2021";
                this.price = 6000000;
            }

            public String showDetails()
            {
                String text = "<br/>VehicleType : " + this.vehicleType + "<br/>vehicleId : " + this.vehicleId +
                    "<br/>Name : " + this.name + "<br/>Model :" + this.model + "<br/>YearOfProduction : " + this.yearOfP 
                     + "<br/>Price : " + this.price;
                return text;
            }
              

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnClick(object sender,EventArgs e)
        {
            car c1 = new car(vtype.Text,vID.Text,Carname.Text,Model.Text,YOP.Text,double.Parse(price.Text));
            result.Text = c1.showDetails();
        }

    }
}