namespace app.interactions;
using { Country } from  '@sap/cds/common';
type BusinessKey : String(10);
type sDate: DateTime;
type LText : String(1024);


entity Interactions_Header {
    key ID : Integer;
    ITEMS : Composition of many Interactions_Items on ITEMS.INTHeader = $self;
    PARTNER : BusinessKey;
    LOG_DATE : sDate;
    BPCOUNTRY: Country;
};
entity Interactions_Items {
key INTHeader : association to Interactions_Header;
TEXT_ID : BusinessKey;
LANGU : String(2);
LOGTEXT : LText;
};