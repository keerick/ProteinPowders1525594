using System;


namespace ProteinPowders_1525594
{
    public partial class ManageProductTypes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ProductTypeModel model = new ProductTypeModel();
            ProductType pt = createProductType();

            lblResult.Text = model.InsertProductType(pt);
        }

        private ProductType createProductType()
        {
            ProductType p = new ProductType();
            p.Name = txtName.Text;

            return p;
        }
    }
}