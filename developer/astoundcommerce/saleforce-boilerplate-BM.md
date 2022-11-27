### Add Product

	Merchant tool > Products and catalogs > Products

Click to button [New]
Set the nextr attributes:
 * Catalog = boilerplate-master-catalog
 * Searchable = [Yes]
 * Online = [Yes]
 * Available for In Store Pickup: [Yes]
 * 

### Reindex products

	Merchant tool > Search > Search Indexes

Click to button [Rebuild All]

### Edit Price: (products) # Import and Export Price Books
need to permission

>  contact your Salesforce admin to enable the High Scale Price Books feature.


### Products

Products are the items and services you sell.

*1. Product Types
    * standar product
    * base product
    * variation master
    * variation group
    * variation product
    * product set
    * product bundle
*2. Product Variation Types
  product available in a variation of sizes or color
    product variation types include:
    * Base Product
      > is a non-sellable. that represent all the sellable variations of a product.
    * Variation Product
      > is a single product with specific values for all the base product attributes.
    * Variation Group
      > is a group of variation products that shares a common atribute, suck as color or size
    * Product variation scenarios
      >   
*3. 


## Content Assets
support : html, text, graphics and video
The content asset provide no your customer no-product related information
    * Content and library
      -- you can use the private o shared library

## Content Slot
It Can be embedded in any part of your storefront site. ** Based in schedule. **
    To show:
    - products
    - categories
    - content assets
    - static html

    it can be a:
    - flash graphic
    - product carrousel
    - product search result
    - marketing graphic

### Seo and URL

    > Merchant Tools → SEO → URL Rules

Create metatags rules
    
    Merchant Tools → SEO → Page Meta Tags Rules. 

    > Pipeline RUles

1. Create a new page example: Content Asset with ID "SEO-QuickOrder-Show" will be used as a source for meta tags for route "QuickOrder-Show"
2. Create new page "SEO-QuickOrder-Show"
3. Set attribute "Searchable" = No.  because they should not be shown in the search results.


## Architetecture of SaleForce B2B Commerce

### Config B2B Commerce Sites

When a site is created or provisioned, it is structured is named REALM (Dominio/Reino)
Has 2 groups:
1. [PIG] = Primary Instance Group
  1. Development
  2. Staging
  3. Production
2. [SIG] = Seconday Instance Group

### Types of Instances
1. Sandbox
2. Staging
3. Development
4. Production

## Cache
### Types of Cache
1. Simple cache (the jey for the cache is the URL)
2. Personalized cache (also called "price promotion cache")



### Config import an export

The general import and export method is in:
Useful for cache config xml
useful for meta-tag xml

Administration > Site Development > Site Import & Export