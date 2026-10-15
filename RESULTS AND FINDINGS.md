# SQL Data Analysis: Results and Findings

## 1. Executive Summary

The e-commerce dataset contains 1,200 order records covering 1 January
2023 to 30 June 2025. These records represent 1,189 unique customers and
3,535 units ordered. The sum of the recorded order values is
1,264,761.96, with an average recorded order value of 1,053.97.

Cancelled and returned orders together account for 497 records, or
approximately 41.4% of all orders. This is a notable operational signal
to investigate, but it should not be interpreted as a confirmed loss
rate without understanding how the dataset defines order statuses and
whether returned orders are finalised. The figures below describe the
dataset; they do not prove the causes behind the patterns.

## 2. Dataset Profile

  Measure                                  Result
  ------------------------------ ----------------
  Order records                             1,200
  Unique customers                          1,189
  Unique order IDs                          1,200
  Earliest order date              1 January 2023
  Latest order date                  30 June 2025
  Total quantity ordered                    3,535
  Total recorded order value         1,264,761.96
  Average recorded order value           1,053.97
  Minimum recorded order value              11.39
  Maximum recorded order value           3,456.40

There are 11 more order records than unique customers. The
customer-level analysis shows 11 customers placed two orders each, while
the remaining customers placed one order each.

## 3. Order Status

  -----------------------------------------------------------------------
  Order               Orders   Share of all Total recorded        Average
  status                             orders    order value recorded order
                                                                    value
  ----------- -------------- -------------- -------------- --------------
  Cancelled              250         20.83%     276,396.21       1,105.58

  Returned               247         20.58%     243,277.70         984.93

  Pending                237         19.75%     256,328.15       1,081.55

  Shipped                235         19.58%     246,159.58       1,047.49

  Delivered              231         19.25%     242,600.32       1,050.22
  -----------------------------------------------------------------------

**Finding:** Cancelled orders are the largest status group, with 250
orders. Returned orders account for another 247. Together, these
statuses represent 497 orders (41.42% of the dataset). Pending orders
represent a further 237 records.

**Interpretation:** The distribution suggests that cancellation, return,
and fulfilment outcomes merit further investigation. Before drawing
conclusions about performance, clarify whether `Pending` orders are
still in progress and how `Returned` orders are recorded. The recorded
order values for cancelled and returned orders should not be counted as
realised sales without further status and financial data.

## 4. Product Analysis

  -----------------------------------------------------------------------
  Product             Orders  Units ordered Total recorded        Average
                                               order value recorded order
                                                                    value
  ----------- -------------- -------------- -------------- --------------
  Chair                  178            562     195,620.11       1,098.99

  Printer                181            542     195,612.61       1,080.73

  Laptop                 173            535     192,126.56       1,110.56

  Tablet                 179            497     186,568.95       1,042.28

  Monitor                163            480     175,651.41       1,077.62

  Desk                   170            508     167,459.93         985.06

  Phone                  156            411     151,722.39         972.58
  -----------------------------------------------------------------------

**Findings:** - **Printer** has the highest number of orders (181). -
**Chair** has the highest unit quantity (562) and the highest total
recorded order value (195,620.11), narrowly exceeding Printer. -
**Laptop** has the highest average recorded order value (1,110.56). -
**Phone** has the lowest order count (156), lowest unit quantity (411),
and lowest total recorded order value (151,722.39) among the listed
products.

**Interpretation:** Chairs, printers, and laptops lead on different
measures. Product decisions should consider order count, units, average
order value, margins, and status outcomes together rather than relying
on recorded value alone.

## 5. Payment Method Analysis

  -----------------------------------------------------------------------
  Payment method             Orders     Total recorded   Average recorded
                                           order value        order value
  -------------- ------------------ ------------------ ------------------
  Online                        258         262,442.94           1,017.22

  Cash                          246         259,786.29           1,056.04

  Credit Card                   234         263,847.63           1,127.55

  Debit Card                    232         232,361.18           1,001.56

  Gift Card                     230         246,323.92           1,070.97
  -----------------------------------------------------------------------

**Findings:** Online is the most frequently recorded payment method,
with 258 orders. Credit Card has the highest total recorded order value
(263,847.63) and the highest average recorded order value (1,127.55).

**Interpretation:** Online leads by order count, while Credit Card leads
by recorded value and average value. This does not establish that one
payment method is more profitable or preferred by customers overall;
payment success, fees, customer characteristics, and order status would
need to be considered.

## 6. Referral Source Analysis

  -----------------------------------------------------------------------
  Referral                   Orders   Unique customers     Total recorded
  source                                                      order value
  -------------- ------------------ ------------------ ------------------
  Instagram                     259                257         275,285.45

  Email                         250                250         261,808.55

  Google                        241                241         250,441.48

  Facebook                      228                228         250,410.90

  Referral                      222                221         226,815.58
  -----------------------------------------------------------------------

**Findings:** Instagram is the largest referral source by order count
and recorded order value. Email ranks second by order count. The number
of unique customers is close to the number of orders for each source.

**Interpretation:** Instagram is associated with the highest recorded
order activity in this dataset. However, without campaign spend,
attribution rules, conversion rates, or profit data, the results do not
establish that Instagram is the most cost-effective marketing channel.

## 7. Coupon Code Analysis

  -----------------------------------------------------------------------
  Coupon                     Orders     Total recorded   Average recorded
  category                                 order value        order value
  -------------- ------------------ ------------------ ------------------
  FREESHIP                      313         335,036.99           1,070.41

  No Coupon                     309         322,401.41           1,043.37

  WINTER15                      292         302,483.54           1,035.90

  SAVE10                        286         304,840.02           1,065.87
  -----------------------------------------------------------------------

**Finding:** `FREESHIP` is the most common coupon category, appearing on
313 orders. `No Coupon` is close behind at 309 orders.

**Interpretation:** The coupon category with the highest number of
orders also has the highest total recorded order value. This alone does
not demonstrate that the coupon caused more orders or higher value. A
stronger analysis would compare conversion, discount cost, shipping
cost, margins, and order status for coupon and non-coupon orders.

## 8. Order Trends Over Time

  -----------------------------------------------------------------------
  Year                       Orders     Total recorded   Average recorded
                                           order value        order value
  -------------- ------------------ ------------------ ------------------
  2023                          510         552,643.24           1,083.61

  2024                          459         480,235.87           1,046.27

  2025 (Jan--Jun                231         231,882.85           1,003.82
  only)                                                
  -----------------------------------------------------------------------

**Findings:** - Order count declined from 510 in 2023 to 459 in 2024. -
Recorded order value declined from 552,643.24 in 2023 to 480,235.87 in
2024. - The 2025 figures cover January to June only, so they are not
directly comparable with full-year totals. - **June 2024** had the
highest monthly order count (53) and the highest monthly recorded order
value (68,068.54) among the year-month combinations in the dataset.

**Interpretation:** The full-year totals show lower order volume and
recorded value in 2024 than in 2023. The dataset alone does not explain
why. Investigating seasonality, marketing activity, stock availability,
pricing, order status, and data completeness could provide context. A
fair year-on-year comparison for 2025 would compare January--June 2025
with January--June 2024 and January--June 2023.

## 9. High-Value Orders and Cancellations

-   **512 orders** have a recorded order value above 1,000.
-   **113 cancelled orders** have a recorded order value above 1,000.
-   The maximum recorded order value is **3,456.40**, for a Tablet order
    with quantity 5.

**Interpretation:** High-value cancellations may deserve review because
they could represent a larger amount of recorded order value tied to
orders that did not proceed. These amounts should not be labelled lost
revenue without confirmation of payment and cancellation accounting.

## 10. Arithmetic Validation

The validation query compares `Total_Price` with `Quantity * Unit_Price`
and returns records where the absolute difference exceeds 0.01.

**Result:** No records exceeded the tolerance. The largest
floating-point difference was approximately 0.00000000000045, which is
effectively zero for this check.

**Interpretation:** The recorded total price is arithmetically
consistent with quantity multiplied by unit price in the supplied
dataset. This check does not validate discounts, shipping charges,
taxes, refunds, or whether the underlying business transactions are
accurate.

## 11. Recommendations for Further Investigation

1.  Review cancelled and returned orders by product, date, and referral
    source to look for recurring patterns.
2.  Compare order statuses across products to understand which products
    have higher cancellation or return counts.
3.  Compare January--June results across 2023, 2024, and 2025 for a more
    like-for-like trend.
4.  Evaluate referral sources using conversion rates, campaign spend,
    and profit rather than order value alone.
5.  Assess coupon performance using discount cost, shipping cost, order
    status, and margin.
6.  If financial data becomes available, calculate fulfilled sales and
    net revenue separately from recorded order value.

## 12. Limitations

-   The dataset contains order values for multiple statuses, including
    cancelled and returned orders. The sum of all `Total_Price` values
    is therefore not necessarily realised revenue.
-   The 2025 period is partial, ending on 30 June 2025.
-   The dataset has limited customer repeat activity: 11 customers have
    two orders, and the rest have one.
-   The analysis is descriptive. It identifies patterns but does not
    establish causation.
-   The validation check covers the arithmetic relationship between
    quantity, unit price, and total price only.

## Conclusion

The SQL analysis demonstrates how filtering, sorting, grouping,
aggregation, date functions, and validation can be used to investigate
an e-commerce dataset. The clearest follow-up areas are the relatively
high counts of cancelled and returned orders, product-level differences,
referral-source activity, and changes in annual order volume. Further
operational and financial context would be needed before making firm
business decisions.
