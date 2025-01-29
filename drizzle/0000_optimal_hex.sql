CREATE TABLE "zradelna_dishes" (
	"id" integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY (sequence name "zradelna_dishes_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"name" varchar(255) NOT NULL,
	"description" text,
	"img_url" varchar(512),
	"created_at" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"updated_at" timestamp
);
--> statement-breakpoint
CREATE TABLE "zradelna_menus" (
	"id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY (sequence name "zradelna_menus_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"from" date NOT NULL,
	"monday_dish_1_id" integer NOT NULL,
	"monday_dish_2_id" integer NOT NULL,
	"tuesday_dish_1_id" integer NOT NULL,
	"tuesday_dish_2_id" integer NOT NULL,
	"wednesday_dish_1_id" integer NOT NULL,
	"wednesday_dish_2_id" integer NOT NULL,
	"thursday_dish_1_id" integer NOT NULL,
	"thursday_dish_2_id" integer NOT NULL,
	"friday_dish_1_id" integer NOT NULL,
	"friday_dish_2_id" integer NOT NULL
);
--> statement-breakpoint
CREATE TABLE "zradelna_user_tables" (
	"id" integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY (sequence name "zradelna_user_tables_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"user_id" varchar(255) NOT NULL,
	"monday_dish_id" integer,
	"tuesday_dish_id" integer,
	"wednesday_dish_id" integer,
	"thursday_dish_id" integer,
	"friday_dish_id" integer
);
--> statement-breakpoint
ALTER TABLE "zradelna_menus" ADD CONSTRAINT "zradelna_menus_monday_dish_1_id_zradelna_dishes_id_fk" FOREIGN KEY ("monday_dish_1_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_menus" ADD CONSTRAINT "zradelna_menus_monday_dish_2_id_zradelna_dishes_id_fk" FOREIGN KEY ("monday_dish_2_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_menus" ADD CONSTRAINT "zradelna_menus_tuesday_dish_1_id_zradelna_dishes_id_fk" FOREIGN KEY ("tuesday_dish_1_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_menus" ADD CONSTRAINT "zradelna_menus_tuesday_dish_2_id_zradelna_dishes_id_fk" FOREIGN KEY ("tuesday_dish_2_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_menus" ADD CONSTRAINT "zradelna_menus_wednesday_dish_1_id_zradelna_dishes_id_fk" FOREIGN KEY ("wednesday_dish_1_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_menus" ADD CONSTRAINT "zradelna_menus_wednesday_dish_2_id_zradelna_dishes_id_fk" FOREIGN KEY ("wednesday_dish_2_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_menus" ADD CONSTRAINT "zradelna_menus_thursday_dish_1_id_zradelna_dishes_id_fk" FOREIGN KEY ("thursday_dish_1_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_menus" ADD CONSTRAINT "zradelna_menus_thursday_dish_2_id_zradelna_dishes_id_fk" FOREIGN KEY ("thursday_dish_2_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_menus" ADD CONSTRAINT "zradelna_menus_friday_dish_1_id_zradelna_dishes_id_fk" FOREIGN KEY ("friday_dish_1_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_menus" ADD CONSTRAINT "zradelna_menus_friday_dish_2_id_zradelna_dishes_id_fk" FOREIGN KEY ("friday_dish_2_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_user_tables" ADD CONSTRAINT "zradelna_user_tables_monday_dish_id_zradelna_dishes_id_fk" FOREIGN KEY ("monday_dish_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_user_tables" ADD CONSTRAINT "zradelna_user_tables_tuesday_dish_id_zradelna_dishes_id_fk" FOREIGN KEY ("tuesday_dish_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_user_tables" ADD CONSTRAINT "zradelna_user_tables_wednesday_dish_id_zradelna_dishes_id_fk" FOREIGN KEY ("wednesday_dish_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_user_tables" ADD CONSTRAINT "zradelna_user_tables_thursday_dish_id_zradelna_dishes_id_fk" FOREIGN KEY ("thursday_dish_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "zradelna_user_tables" ADD CONSTRAINT "zradelna_user_tables_friday_dish_id_zradelna_dishes_id_fk" FOREIGN KEY ("friday_dish_id") REFERENCES "public"."zradelna_dishes"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "name_idx" ON "zradelna_dishes" USING btree ("name");--> statement-breakpoint
CREATE INDEX "week_idx" ON "zradelna_menus" USING btree ("from");--> statement-breakpoint
CREATE INDEX "user_id_idx" ON "zradelna_user_tables" USING btree ("user_id");