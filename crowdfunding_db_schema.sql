-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/z7geRJ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Category" (
    "category_id" Varchar(8)   NOT NULL,
    "category_name" Varchar(8)   NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory_id" Varchar(23)   NOT NULL,
    "subacategory_name" Varchar(23)   NOT NULL
);

CREATE TABLE "Campaign" (
    "cf_id" Int   NOT NULL,
    "contact_id" Int   NOT NULL,
    "company_name" Varchar   NOT NULL,
    "description" Varchar   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" varchar   NOT NULL,
    "end_date" varchar   NOT NULL,
    "staff_pick" boolean   NOT NULL,
    "spotlight" boolean   NOT NULL,
    "category_&_sub-category" varchar   NOT NULL,
    "category" varchar   NOT NULL,
    "subcategory" varchar   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL
);

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id_category_name" FOREIGN KEY("category_id", "category_name")
REFERENCES "Campaign" ("category_id", "category");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_id_subacategory_name" FOREIGN KEY("subcategory_id", "subacategory_name")
REFERENCES "Campaign" ("subcategory_id", "subcategory");

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");

