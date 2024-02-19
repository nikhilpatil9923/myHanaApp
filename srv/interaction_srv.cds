using app.interactions from '../db/interactions';
service CatalogService {
entity interactions_header 
as projection on interactions.interactions_header;
entity Interactions_Items 
as projection on interactions.Interactions_Items;
};