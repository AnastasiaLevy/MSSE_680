using System;
using System.Text;
using ClassProject2;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestProject1
{
    /// <summary>
    /// Summary description for UnitTestWeekThree
    /// </summary>
    [TestClass]
    public class UnitTestWeekThree
    {
        public UnitTestWeekThree()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }
        
        int value = 6;

        #region Additional test attributes
        //
        // You can use the following additional attributes as you write your tests:
        //
        // Use ClassInitialize to run code before running the first test in the class
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // Use ClassCleanup to run code after all tests in a class have run
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        // Use TestInitialize to run code before running each test 
        // [TestInitialize()]
        // public void MyTestInitialize() { }
        //
        // Use TestCleanup to run code after each test has run
        // [TestCleanup()]
        // public void MyTestCleanup() { }
        //
        #endregion

        [TestMethod]
        public void InsertUsingRepository()
        {   
            
            var labRepo = new DataRepository<Lab>();

            Lab myLab = new Lab();
            myLab.LabID = value;
            myLab.InstrName = "Kathy";
            myLab.ScheduleShedID = value;
            labRepo.Insert(myLab);
        }

        public void InsertSchedUsingRepository()
        {
            var shRepo = new DataRepository<Schedule>();

            Schedule sh = new Schedule();
            sh.ShedID = 3;
            sh.Date = "2013/14/09";
            sh.Day = "Monday";
            shRepo.Insert(sh);
        }
    }
}
