using {
    sap,
    Currency,
    temporal,
    managed
} from '@sap/cds/common';

extend sap.common.Currencies with {
    // Currencies.code = ISO 4217 alphabetic three-letter code
    // with the first two letters being equal to ISO 3166 alphabetic country codes
    // See also:
    // [1] https://www.iso.org/iso-4217-currency-codes.html
    // [2] https://www.currency-iso.org/en/home/tables/table-a1.html
    // [3] https://www.ibm.com/support/knowledgecenter/en/SSZLC2_7.0.0/com.ibm.commerce.payments.developer.doc/refs/rpylerl2mst97.htm
    numcode  : Integer;
    exponent : Integer; //> e.g. 2 --> 1 Dollar = 10^2 Cent
    minor    : String; //> e.g. 'Cent'
}

  abstract entity Amount {
    currency    : Currency;
    // grossAmount : AmountT;
    // netAmount   : AmountT;
    // taxAmount   : AmountT;
  }

  

 // type Email : String(255)@title : '{i18n>email}'  @assert.format : '^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$'; 
//   type PhoneNumber : String(30)@title : '{i18n>phoneNumber}'  @assert.format : '((?:\+|00)[17](?: |\-)?|(?:\+|00)[1-9]\d{0,2}(?: |\-)?|(?:\+|00)1\-\d{3}(?: |\-)?)?(0\d|\([0-9]{3}\)|[1-9]{0,3})(?:((?: |\-)[0-9]{2}){4}|((?:[0-9]{2}){4})|((?: |\-)[0-9]{3}(?: |\-)[0-9]{4})|([0-9]{7}))';
// }

