﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MaterialSkin;
using MaterialSkin.Controls;
using System.Windows.Forms;


// @Daniel Hritcu
// Use this as a template when designing the other forms

namespace Library_Management_System
{
    // We are using inheriting :MaterialForm not the default :Form
    public partial class Loan : MaterialForm
    {
        public Loan()
        {
            InitializeComponent();

            // Form theme code
            // Do not edit yet...

            // Create a material theme manager and add the form to manage (this)
            MaterialSkinManager materialSkinManager = MaterialSkinManager.Instance;
            materialSkinManager.AddFormToManage(this);
            materialSkinManager.Theme = MaterialSkinManager.Themes.DARK;




            //Add stuff to the listbox. Dirty way
            string[] row1 = { "Hq", "Hq", "Hq", "Hq", "Hq", "Hq" };
            string[] row2 = { "Hw", "Hw", "Hw", "Hw", "Hw", "Hw" };
            string[] row3 = { "Hw", "Hw", "Hw", "Hw", "Hw", "Hw" };
            string[] row4 = { "Hw", "Hw", "Hw", "Hw", "Hw", "Hw" };
            string[] row5 = { "Hw", "Hw", "Hw", "Hw", "Hw", "Hw" };
            var listViewItem1 = new ListViewItem(row1);
            var listViewItem2 = new ListViewItem(row2);
            var listViewItem3 = new ListViewItem(row3);
            var listViewItem4 = new ListViewItem(row4);
            var listViewItem5 = new ListViewItem(row5);
            materialListView1.Items.Add(listViewItem1);
            materialListView1.Items.Add(listViewItem2);
            materialListView1.Items.Add(listViewItem3);
            materialListView1.Items.Add(listViewItem4);
            materialListView1.Items.Add(listViewItem5);

        }

        private void btn_New_Click(object sender, EventArgs e)
        {
            //create FormNewLoan object frmNewLoan in memory
            NewLoan newLoan = new NewLoan();
            newLoan.Show();
        }

        //delect the selected line in the listview table area and interact with SQL
        private void btn_Delete_Click(object sender, EventArgs e)
        {

        }


        //show the selected record from SQL on the listview area
        private void btn_Search_Click(object sender, EventArgs e)
        {

        }

        //clear the txt input in the searching area
        private void btn_Reset_Click(object sender, EventArgs e)
        {
            txtbx_Book.Text = "";
            txtbx_Member.Text = "";
            comboBox_Status.Text = "";
        }
    }
}
