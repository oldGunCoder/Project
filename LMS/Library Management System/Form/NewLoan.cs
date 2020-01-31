using System;
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
    public partial class NewLoan : MaterialForm
    {
        public NewLoan()
        {
            InitializeComponent();

            // Form theme code
            // Do not edit yet...

            // Create a material theme manager and add the form to manage (this)
            MaterialSkinManager materialSkinManager = MaterialSkinManager.Instance;
            materialSkinManager.AddFormToManage(this);
            materialSkinManager.Theme = MaterialSkinManager.Themes.DARK;

        }
        
        // need to save the data into sql server
        private void btn_Save_Click(object sender, EventArgs e)
        {
            if(txtbx_Book.Text == "")
            {
                lbl_BookError.Visible = true;
            }
            else lbl_BookError.Visible = false;

            if (txtbx_Member.Text == "")
            {
                lbl_MemberError.Visible = true;
            }
            else lbl_MemberError.Visible = false;

            if (dateTimePicker_IssueDate.Text == "")
            {
                lbl_IssueDateError.Visible = true;
            }
            else lbl_IssueDateError.Visible = false;


        }

        //need to clear the entry
        private void btn_Reset_Click(object sender, EventArgs e)
        {
            txtbx_Book.Text = "";
            txtbx_Member.Text = "";
            //dateTimePicker_IssueDate.Text = "";
        }
    }
}
