//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WardrobeByKlein.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Accessory
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Accessory()
        {
            this.Outfits = new HashSet<Outfit>();
        }
    
        public int AccessoryID { get; set; }
        [Display(Name = "Name")]
        public string AccessoryName { get; set; }
        [Display(Name = "Photo")]
        public string AccessoryPhoto { get; set; }
        [Display(Name = "Type")]
        public string AccessoryType { get; set; }
        [Display(Name = "Color")]
        public string AccessoryColor { get; set; }
        [Display(Name = "Season")]
        public string AccessorySeason { get; set; }
        [Display(Name = "Occasion")]
        public string AccessoryOccasion { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Outfit> Outfits { get; set; }
    }
}
