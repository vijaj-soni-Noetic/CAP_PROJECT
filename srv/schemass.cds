using my.bookshop as my from '../db/schema';

service CatalogService {
     entity Base as projection on my.Base;
      @Capabilities : {
         InsertRestrictions.Insertable : true,
         ReadRestrictions.Readable : true,
         UpdateRestrictions.Updatable : true,
         DeleteRestrictions.Deletable : true 
        }
     entity Book as projection on my.Book;
     entity Product as projection on my.Product;
}