using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ClassProject2;
using System.Linq;
using System.Data;
using System.Data.Objects;
using System.Data.Entity;
using System.Data.Services.Client;
using System.Data.Entity.Validation;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        
        [TestMethod]
        public void TestingInput()

        {
            int value = 5;
            using (var context = new ClassProjectEntities())
            {
                Lab l = new Lab();
                l.ScheduleShedID = 1;
                l.LabID = value;
                //l.InstrName = "Marina";
                //l.StudName = "tom";
                

                Schedule sh = new Schedule();
                sh.ShedID = 2;
                sh.Date = "2013 - 09 - 13";

                context.Schedules.Add(sh);
                context.SaveChanges();

                context.Labs.Add(l);
                context.SaveChanges();

               

                //context.Labs.Add(l);
                //context.SaveChanges();
                Person p = new Person();
                p.Fname = "Bred";
                p.Lname = "Blob";
                p.PersonId = value;
                //p.Username = "TCat";
                //p.Password = "@123";
                //p.ClassID = "2";
                p.PicturePictureID = "1";
                p.LabLabID = value;
                


                context.People.Add(p);
                context.SaveChanges();
                Picture pc = new Picture();
                pc.PicureID = value;
                pc.PictureFile = "File.bmp";
                pc.Person_PersonId = 2;
                context.Pictures.Add(pc);
                context.SaveChanges();


                Person savep = (from pr in context.People where pr.Fname == p.Fname select pr).FirstOrDefault();

                Assert.AreEqual(savep.Fname, p.Fname);


            }
            
            

        }
    }
}
