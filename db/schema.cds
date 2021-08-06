namespace my.bookshop;
//database
using { cuid, managed } from '@sap/cds/common';

using from './schema/common';

entity Base :managed {
  key ID : Integer;
  Title : String;
}

entity Book :managed {
  key ID : Integer;
  Books_Title : String;
  Price : Decimal(5, 2);
}
entity Product :managed {
    key ID : Integer;
  P_Title : String;
  P_Price : Decimal(5, 2);
  P_Stock : Integer;
  mfd : DateTime;
}

entity Order :cuid, managed {
    book : Association to Book;
    Quantity : Integer;
}