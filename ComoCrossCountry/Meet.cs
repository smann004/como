//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ComoCrossCountry
{
    using System;
    using System.Collections.Generic;
    
    public partial class Meet
    {
        public Meet()
        {
            this.Races = new HashSet<Race>();
        }
    
        public int ID { get; set; }
        public string Name { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string Location { get; set; }
        public string FormattedResults { get; set; }
        public string Map { get; set; }
        public string Doc1 { get; set; }
        public string Doc2 { get; set; }
    
        public virtual ICollection<Race> Races { get; set; }
    }
}
