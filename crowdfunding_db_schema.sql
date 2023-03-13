-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/N6MuUF
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- departments_db
-- -
-- dept_no pk varchar FK >- dept_manager_db.dept_no
-- dept_name varchar
-- dept_emp_db
-- -
-- emp_no pk int FK - employees_db.emp_no
-- dept_no varchar FK - departments_db.dept_no
-- dept_manager_db
-- -
-- dept_no varchar
-- emp_no pk int FK -< employees_db.emp_no
-- employees_db
-- -
-- emp_no pk int FK - salaries_db.emp_no
-- emp_title_id fk varchar
-- birth_date varchar
-- first_name varchar
-- last_name varchar
-- sex varchar
-- hire_date varchar
-- salaries_db
-- -
-- emp_no pk int
-- salary int
-- titles_db
-- -
-- title_id pk varchar FK -< employees_db.emp_title_id
-- title varchar

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

