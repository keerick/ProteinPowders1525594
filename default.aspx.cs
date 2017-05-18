using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProteinPowders_1525594
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }

        private void FillPage()
        {
            //Get a list of all products in DB
            ProductModel productModel = new ProductModel();
            List<Product> products = productModel.GetAllProducts();

            //Make sure products exist in the database
            if (products != null)
            {
                //Create a new Panel with an ImageButton and 2 labels for each Product
                foreach (Product product in products)
                {
                    Panel productPanel = new Panel();
                    ImageButton imageButton = new ImageButton();
                    Label lblName = new Label();
                    Label lblPrice = new Label();

                    //Set childControls' properties 
                    imageButton.ImageUrl = "~/Images/Products/" + product.Image;
                    imageButton.CssClass = "productImage";
                    imageButton.PostBackUrl = "Product.aspx?id=" + product.Id;

                    lblName.Text = product.Name;
                    lblName.CssClass = "productName";

                    lblPrice.Text = "$ " + product.Price;
                    lblPrice.CssClass = "productPrice";

                    //Add child controls to panel
                    productPanel.Controls.Add(imageButton);
                    productPanel.Controls.Add(new Literal { Text = "<br />" });
                    productPanel.Controls.Add(lblName);
                    productPanel.Controls.Add(new Literal { Text = "<br />" });
                    productPanel.Controls.Add(lblPrice);

                    //Add dynamic Panels to static Parent Panel
                    pnlProducts.Controls.Add(productPanel);
                }
            }
            else
            {
                //No products found
                pnlProducts.Controls.Add(new Literal { Text = "No products found!" });
            }
        }
    }
}