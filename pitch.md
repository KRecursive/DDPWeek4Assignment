

The Power of Compound Interest
========================================================
author: Ken Roubal
date: April 11, 2018
autosize: true
Developing Data Products:  Week 4 Assignment

Assignment Objectives (Part 1)
========================================================

The Shiny application!
- Write a shiny application
- Deploy the application on Rstudio's shiny server
- Share the application link in Coursera
- Share the server and ui code on github

Shiny app link:  <https://support.rstudio.com/hc/en-us/articles/200486468><br>
Github repo link:  <https://github.com/KRecursive/DDPWeek4Assignment>


Assignment Objectives (Part 2)
========================================================

The reproducible pitch presentation.
- Create a 5-slide presentation in Slidify or Rstudio Presenter (my choice)
- Include embedded R code that runs during the presentaiton
- Publish the presentation on github or Rpubs
- Share the presentation link in Coursera 


About My Application (Part 1)
========================================================

I basically just created an interactive compound interest calculator that can be applied to investment/loan scenarios.  The basic formula is <br> Amount = Principal * (1 + (rate / frequency of compounding))^(frequency of compounding * length of time in years)

While the app is interactive and lets you select inputs, I'm just going to include a brief example with predefined amounts for inputs: <br>

```r
p <- 1000; r <- 0.05; n <- 12; t <- 10
a <- p*(1+r/n)^(n*t)
a
```

```
[1] 1647.009
```
In this example, the loan principal of $1000 becomes $1,647.01 during a loan of duration 10 years, interest rate of 5%, and interest compounding monthly.


About My Application (Part 2)
========================================================

The application's UI has a left pane that houses all of the user-defined inputs and the calculations are described at the right.

Input fields:
- The principal value of the original investment or debt (i.e., 'p' from the formula on the prior page)
- The length of the investment/loan in years (i.e., 't' from the formula on the prior page)
- The rate of interest for the investment/loan (i.e., 'r' from the formula on the prior page)
- The frequency of compounding for the interest rate (i.e., 'n' from the formula on the prior page)

Output fields:
- The amassed wealth or debt for the duration of the investment/loan (i.e., 'a' from the formula on the prior page)
- The net growth of the principal value (i.e., 'a' minus 'p' from the formula on the prior page)


Thank you for viewing my presentation!
========================================================

Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!
Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!
Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!
Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!
Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!
Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!
Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!
Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!
Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!
Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!  Thanks!















