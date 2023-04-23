# D3_folded_charts
This is a showcase of interactive charts in shiny and Rmarkdown reports! Live shinyapp: https://appforiarteam.shinyapps.io/Interactive_charts_reports/ 

Note: this app used `noteMD` R package (Repos: https://github.com/jienagu/noteMD) and `nivopie` (Repos: https://github.com/jienagu/nivopie) R package (htmlwidget) from my Github! 

## The design 

* Folded data structure:  
  - zoom in to monthly chart by either clicking bar or the dropdown menu from slidebar. Click "ALL" from dropdown selector to reset! When zooming in monthly chart, both bar chart and donut chart are zoom into monthly level.

* Customize charts show/hide 
  - Users can check/uncheck to decide whether they want to show the donut chart!

* Customize charts in reports
  - Users can check/uncheck to decide whether they want to print the donut chart in reports or not.

* Custmize note
  - Users can take notes under charts and their notes will be printed in the reports. 
  
## How to use this app as the template for your own app:
* Step 1:Download or clone the GitHub repo https://github.com/jienagu/D3_folded_charts.git

* Step 2:Replace the data (temp_flight2) with your own data in app.R. Code Ref: https://github.com/jienagu/D3_folded_charts/blob/master/app.R#L27

* Step 3:Replace the column name of the data that you want to show as input. For example, in my example, I am using the column “name” to showcase each airline company. Code Ref: https://github.com/jienagu/D3_folded_charts/blob/master/app.R#L41 

* Step 4:Replace the expandable column name of your data that you want to show when user click each bar. For example, in my app, I am using the column “monthly” to showcase monthly data of user-selected airline. Code ref: https://github.com/jienagu/D3_folded_charts/blob/master/app.R#L106 

Enjoy! 

Extra customized feature:
Here is to change the bar color: https://github.com/jienagu/D3_folded_charts/blob/master/bar_plot.js#L28 



![demo_gif](demo.gif)

# Acknowledgement
Beef Cattle Institute from Kansas State University
