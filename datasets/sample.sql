BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(2,'Amazon','');
INSERT INTO "Account" VALUES(3,'USPS','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'','Non-refrigerated','BBQ Sauce','2');
INSERT INTO "Delivery_Item__c" VALUES(2,'2023-06-30','Refrigerated','Creamer','1');
INSERT INTO "Delivery_Item__c" VALUES(3,'2024-06-01','Non-refrigerated','Coffee','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'Saratoga - Uncommon Grounds','2023-06-02T19:00:00.000+0000','Requested','2');
INSERT INTO "Delivery__c" VALUES(2,'Albany - BBQ','2023-06-29T19:00:00.000+0000','Scheduled','3');
COMMIT;
