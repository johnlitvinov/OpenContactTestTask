﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TestProgramDataBaseEntities : DbContext
    {
        public TestProgramDataBaseEntities()
            : base("name=TestProgramDataBaseEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<NewsPost> NewsPosts { get; set; }
        public virtual DbSet<NewsSource> NewsSources { get; set; }
    }
}
