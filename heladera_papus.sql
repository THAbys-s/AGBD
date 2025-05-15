CREATE TABLE "gustos" (
    "gustos_id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "gustos_exóticos_id" INTEGER,
    "salsa_id" INTEGER,
    "gustos_name" TEXT NOT NULL,
    "bocadillos_id" INTEGER NOT NULL,
    "inventory_id" INTEGER NOT NULL,
	FOREIGN KEY("gustos_exóticos_id") REFERENCES gustos_especiales("gustos_exóticos_id"),
	FOREIGN KEY("inventory_id") REFERENCES inventory("inventory_id"),
	FOREIGN KEY("salsa_id") REFERENCES salsas("salsa_id")
);



CREATE TABLE "salsas" (
	"salsa_id"	INTEGER,
	"salsa_name"	VARCHAR(255) NOT NULL,
	FOREIGN KEY("salsa_id") REFERENCES salsas("salsa_id")
);



CREATE TABLE "gustos_especiales" (
    "gustos_exóticos_id" INTEGER,
    "gustos_exóticos_name" VARCHAR(255) NOT NULL,
    FOREIGN KEY("gustos_exóticos_id") REFERENCES gustos("gustos_exóticos_id")
);



CREATE TABLE "inventory" (
    "inventory_id" INTEGER AUTOINCREMENT,
    "store_id" INTEGER,
	FOREIGN KEY("inventory_id") REFERENCES inventory("inventory_id"),
	FOREIGN KEY("store_id") REFERENCES store("store_id")
);



CREATE TABLE "store" (
    "store_id" INTEGER AUTOINCREMENT,
    "staff_id" INTEGER,
    "address_id" INTEGER,
    "payment_id" INTEGER,
	FOREIGN KEY("store_id") REFERENCES inventory("store_id"),
	FOREIGN KEY("store_id") REFERENCES payment("store_id")
    FOREIGN KEY("store_id") REFERENCES staff("store_id")
    FOREIGN KEY("staff_id") REFERENCES staff("staff_id")
);