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
    
    public partial class Payment
    {
        public int id { get; set; }
        public Nullable<System.DateTime> date_payment { get; set; }
        public Nullable<int> category_id { get; set; }
        public Nullable<int> user_id { get; set; }
        public string name { get; set; }
        public Nullable<int> count { get; set; }
        public Nullable<double> price { get; set; }
        public Nullable<double> cost { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual Users Users { get; set; }
    }
}
