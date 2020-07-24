-- Table: public.items
-- DROP TABLE public.items;
CREATE TABLE public.items (
    itemId bigint NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1
    ),
    itemName character varying COLLATE pg_catalog."default" NOT NULL,
    itemPrice numeric(10, 2) NOT NULL DEFAULT 1.0,
    itemTitle text COLLATE pg_catalog."default" NOT NULL DEFAULT 'long(er) product title/name'::text,
    itemAbout text [] COLLATE pg_catalog."default" NOT NULL DEFAULT 'This is a great product. It looks great'::text,
    itemDescription text COLLATE pg_catalog."default" NOT NULL DEFAULT 'This is a product, etc., etc.'::text
) TABLESPACE pg_default;
ALTER TABLE public.items OWNER to "amazinAdmin";
COMMENT ON TABLE public.items IS 'Items table. This should hold most of the item data needed for the site.';
COMMENT ON COLUMN public.items.itemId IS 'items ids';
COMMENT ON COLUMN public.items.itemName IS 'This is the item name. should not be too long.';
COMMENT ON COLUMN public.items.itemAbout IS 'about item sections';
COMMENT ON COLUMN public.items.itemDescription IS 'for Product description section';