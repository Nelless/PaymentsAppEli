//------------------------------------------------------------------------------
// <auto-generated>
//    Этот код был создан из шаблона.
//
//    Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//    Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PaymentsAppEli.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Category
    {
        public Category()
        {
            this.Payment = new HashSet<Payment>();
        }
    
        public int id_category { get; set; }
        public string name_category { get; set; }
        public string image { get; set; }
    
        public virtual ICollection<Payment> Payment { get; set; }
    }
}
