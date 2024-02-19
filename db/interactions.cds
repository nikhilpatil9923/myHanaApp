namespace app.interactions;
using {Country } from  '@sap/cds/common';
type BuisnessKey : String(10);
type sDate: DateTime;
type LText : String(1024);


entity interactions_header {
    key ID : Integer;
    ITEMS : Composition of many Interactions_Items on ITEMS.INTHeader = $self;
    PARTNER : BuisnessKey;
    LOG_DATE : sDate;
    BPCOUNTRY: Country;
};
entity Interactions_Items {
key INTHeader : Association to interactions_header;
TEXT_ID : BuisnessKey;
LANGU : String(2);
LOGTEXT : LText;
};