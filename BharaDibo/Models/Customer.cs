//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BharaDibo.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Customer
    {
        public string CUSEmail { get; set; }
        public string CUSName { get; set; }
        public string CUSPassword { get; set; }
        public string CUSContactNo { get; set; }
        public string CUSAddress { get; set; }
        public Nullable<System.DateTime> CUSDOB { get; set; }
        public Nullable<System.DateTime> CUSStartingDate { get; set; }
        public Nullable<float> CUSRating { get; set; }
        public Nullable<int> CUSBalance { get; set; }
    }
}