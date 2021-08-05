//database
using from './schema/common';

entity Base {
  key ID : Integer;
  Title : String;
}

entity Book {
  key ID : Integer;
  Books_Title : String;
  Price : Decimal(5, 2);
}
entity Product {
    key ID : Integer;
  P_Title : String;
  P_Price : Decimal(5, 2);
  P_Stock : Integer;
  mfd : DateTime;
}