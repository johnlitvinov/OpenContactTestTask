//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OpenContact.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class NewsPost
    {
        public int Id { get; set; }
        public int NewsSourceId { get; set; }
        public string NewsName { get; set; }
        public string NewsDescription { get; set; }
        public Nullable<System.DateTime> DateOfPublication { get; set; }
        public string ResourceID { get; set; }
    
        public virtual NewsSource NewsSource { get; set; }
    }
}
