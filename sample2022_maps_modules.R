# Install packages if not already installed
mypackages <- c("shiny", 
                "shinythemes", 
                "sf",
                "mapview",
                "leaflet",
                "leafpop")
for (p in mypackages){
  if(!require(p, character.only = TRUE)){
    install.packages(p)
    library(p, character.only = TRUE)
  }
}

# Load packages
library(shiny)
library(shinythemes)
library(sf)
library(mapview)
library(leaflet)
library(leafpop)

load("modules.RData")
countries <- unique(copernicus$NUTS0)


ui <- fluidPage(theme = shinytheme("lumen"),
                titlePanel("LUCAS 2022 Modules"),
                sidebarLayout(
                  sidebarPanel(
                    selectInput(inputId = "dataset", label = strong("Module"),
                                choices = c("copernicus",
                                            "grassland",
                                            "grassland_extended",
                                            "LF",
                                            "soil"),
                                selected = "copernicus"),
                    selectInput(inputId = "background", label = strong("Maps background"),
                                choices = c("OpenStreetMap",
                                            "Esri.WorldImagery",
                                            "OpenTopoMap"),
                                selected = "OpenStreetMap"),
                    selectInput(inputId = "Country", label = strong("Country (NUTS0)"),
                                choices = countries,
                                selected = "AT"),
                    selectInput(inputId = "var", label = strong("Variable of interest"),
                                choices = c("Land cover"="LC",
                                            "Land use"="LU"),
                                selected = "LC"),
                    actionButton("do", "Click button"),
                    width = 3),
                # Output
                mainPanel(leafletOutput('map', width = "100%", height = 700))
            )
      )


server <- function(input, output, session) {
  observeEvent(input$do, {
    # Subset data
    selected_sample <- reactive({
      if (input$dataset == "copernicus") samp <- copernicus
      else
        if (input$dataset == "grassland_extended") samp <- grassland_extended
        else
          if (input$dataset == "grassland") samp <- grassland
          else
            if (input$dataset == "LF") samp <- LF
            else
              if (input$dataset == "soil") samp <- soil
      samp[samp$NUTS0 == input$Country,]
    })
    # Pull the map
    output$map <- renderLeaflet({
      if (input$background == "OpenStreetMap") 
        if (input$var == "LC")
          mapView(selected_sample()["LC"], map.types = c("OpenStreetMap"))@map
        else
          mapView(selected_sample()["LU"], map.types = c("OpenStreetMap"))@map
      else
        if (input$background == "Esri.WorldImagery") 
          if (input$var == "LC")
            mapView(selected_sample()["LC"], map.types = c("Esri.WorldImagery"))@map
          else
            mapView(selected_sample()["LU"], map.types = c("Esri.WorldImagery"))@map
      else
        if (input$background == "OpenTopoMap") 
          if (input$var == "LC")
            mapView(selected_sample()["LC"], map.types = c("OpenTopoMap"))@map
          else
            mapView(selected_sample()["LU"], map.types = c("OpenTopoMap"))@map
    })
  })
}



# Create Shiny object
shinyApp(ui, server)

