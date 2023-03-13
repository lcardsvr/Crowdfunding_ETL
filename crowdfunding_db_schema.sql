

CREATE TABLE "contacts_db" (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_contacts_db" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign_db" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" varchar   NOT NULL,
    "pledged" varchar   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" varchar   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" varchar   NOT NULL,
    "end_date" varchar   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL
);

CREATE TABLE "subcategory_db" (
    "subcategory_id" varchar   NOT NULL,
    "subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_subcategory_db" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "category_db" (
    "category_id" varchar   NOT NULL,
    "category" varchar   NOT NULL,
    CONSTRAINT "pk_category_db" PRIMARY KEY (
        "category_id"
     )
);

ALTER TABLE "contacts_db" ADD CONSTRAINT "fk_contacts_db_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign_db" ("contact_id");

ALTER TABLE "subcategory_db" ADD CONSTRAINT "fk_subcategory_db_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "campaign_db" ("subcategory_id");

ALTER TABLE "category_db" ADD CONSTRAINT "fk_category_db_category_id" FOREIGN KEY("category_id")
REFERENCES "campaign_db" ("category_id");

