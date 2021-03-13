-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "final_net_migration" (
    "Migration_Type" VARCHAR   NOT NULL,
    "Region_X" VARCHAR   NOT NULL,
    "Year" INT   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "Age" VARCHAR   NOT NULL,
    "Value" INT   NOT NULL
);

CREATE TABLE "final_enrolment_data" (
    "Region" VARCHAR   NOT NULL,
    "Year" INT   NOT NULL,
    "Num_Enrolled" INT   NOT NULL
);

ALTER TABLE "final_net_migration" ADD CONSTRAINT "fk_final_net_migration_Region_X_Year" FOREIGN KEY("Region_X", "Year")
REFERENCES "final_enrolment_data" ("Region", "Year");

