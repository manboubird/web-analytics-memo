Schema Design
==================

## Demensional Modeling Fundamentals

### Fact Tables

#### Periodic Snapshot Designs

Ref. [Adamson08:Ch8. Periodic Snapshot Designs][Adamson08]

#### Factless Fact Tables

Ref. [Adamson08:Ch8. Factless Fact Tables][Adamson08]


### Demension Tables

#### Slowly Changing Dimensions(SCD)

Ref. [Kimball04:183][Kimball04]

*SCD Type 1 Overwrite*

A simple overwrite of one or more attributes in an existing dimension record.

*SCD Type 2 Partitioning History*

*SCD Type 3 Alternate Realities*

*SCD Hibrid*


#### Customer Demension

Ref. [Kimball13:Ch.8 Customer Dimension Attributes][Kimball13]

**Segmentation Attributes**

- Gender
- Ethnicity
- Age
- Status (new, active, inactive, and closed)
- Referring source
- Business-specific market Segmentation

**Scoring and Profiling Customer**

RFI(or RFM) cube: Three customer profiling facets.

1. **Recency:** how many days has it been since the customer last ordered or visited your site. Ex. past days since last login/visited/payment.
2. **Frequency:** how many times the customer has ordered or visited, typically in the past year. Ex. the number of login within last 7 days.
3. **Intensity(or Monetary):** how much money the customer has spent over the same time period. Ex. life time value.

Credit behavior and returns cluster:

- A: high volume repeat customer, good credit, few product returns
- B: High volume repeat customer, good credit, many product returns
- C: Recent new customer, no established credit pattern
- D: Occasional customer, good credit
- E: Occasional customer, poor credit
- F: Former good customer, not seen recently
- G: Frequent window shopper, mostly unproductive
- H: Other

Time series behavoirs tagging:

- The last 10 observations of a customer: C C C D D A A A B B

Behavior tag handling

- build explicit time series of attributes in the customer dimension.
- create a single attribute with all the behavior tags concatenated together, such as CCCDDAAABB for wild card search.


#### Cohort Analysis

Ref. [Kimball13:Ch.8 Behavior Study Groups for Cohorts][Kimball13]


### Drilling 

Ref. [Kimball10:183][Kimball10]


*Drilling Down*

*Drilling Up*

*Drilling Across*



## Reference

- [R. Kimball. The Data Warehouse ETL Toolkit: Practical Techniques for Extracting, Cleaning, Conforming, and Delivering Data, 2004.][Kimball04]
[Kimball04]: http://www.kimballgroup.com/data-warehouse-business-intelligence-resources/books/data-warehouse-dw-etl-toolkit "R. Kimball. The Data Warehouse ETL Toolkit: Practical Techniques for Extracting, Cleaning, Conforming, and Delivering Data, 2004."

- [R. Kimball. The Kimball Group Reader: Relentlessly Practical Tools for Data Warehousing and Business Intelligence, 2010.][Kimball10]
[Kimball10]: http://www.kimballgroup.com/data-warehouse-business-intelligence-resources/books/kimball-reader/ "R. Kimball. The Kimball Group Reader: Relentlessly Practical Tools for Data Warehousing and Business Intelligence, 2010."

- [R. Kimball. The Data Warehouse Toolkit, 3rd Edition: The Definitive Guide to Dimensional Modeling, 2013.][Kimball13]
[Kimball13]: http://www.kimballgroup.com/data-warehouse-business-intelligence-resources/books/data-warehouse-dw-toolkit/ "R. Kimball. The Data Warehouse Toolkit, 3rd Edition: The Definitive Guide to Dimensional Modeling, 2013."

- [C. Adamson. Mastering Data Warehouse Aggregates: Solutions for Star Schema Performance, 2008.][Adamson08]
[Adamson08]: http://www.amazon.com/Mastering-Data-Warehouse-Aggregates-Performance-ebook/dp/B008NBZ25G "C. Adamson. Mastering Data Warehouse Aggregates: Solutions for Star Schema Performance, 2008."

