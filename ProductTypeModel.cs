﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProteinPowders_1525594
{
    public class ProductTypeModel
    { 
    public string InsertProductType(ProductType productType)
    {
        try
        {
            ProteinPowderEntities db = new ProteinPowderEntities();
            db.ProductTypes.Add(productType);
            db.SaveChanges();

            return productType.Name + "was successfully inserted";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string UpdateProductType(int id, ProductType productType)
    {
        try
        {
            ProteinPowderEntities db = new ProteinPowderEntities();

            //Fetch object from db
            ProductType p = db.ProductTypes.Find(id);

            p.Name = productType.Name;


            db.SaveChanges();
            return productType.Name + "was successfully updated";

        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string DeleteProductType(int id)
    {
        try
        {
            ProteinPowderEntities db = new ProteinPowderEntities();
            ProductType productType = db.ProductTypes.Find(id);

            db.ProductTypes.Attach(productType);
            db.ProductTypes.Remove(productType);
            db.SaveChanges();

            return productType.Name + "was successfully deleted";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }
}
}