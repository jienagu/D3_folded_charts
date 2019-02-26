
folded_js_bar=function(data, fold_bar, spread_bar, reset_button_id){
  library(r2d3)
  ### Add folded function
  fold=ifelse( input$bar_clicked == "" | input$reset_button_id, 99 , input$bar_clicked)
  if(input$reset_button_id){
    grouped=expr(fold_bar)
  }else{
    if(input$bar_clicked != ""){
      grouped=expr(spread_bar)
    }else{
      grouped=expr(fold_bar)
    }
  }
  
  if (fold!= 99) data <- filter(data, fold_bar == fold)
  
  finaldata = data %>%
    group_by(!!grouped) %>%
    tally() %>%
    collect() %>%
    mutate(
      y = n,
      x = !!grouped
    ) %>%
    select(x, y) %>% 
    mutate(label = x)
  
  return( r2d3(finaldata, "bar_plot.js") )
}


