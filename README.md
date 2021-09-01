
<!-- README.md is generated from README.Rmd. Please edit README.Rmd file -->

This shiny app allows to visualize interactively the points selected in
the 2022 round of Eurostat Land Use and Land Cover Survey (LUCAS).

# 

Instructions to install and launch the app for visualising the sampled
points in LUCAS 2022 in maps by NUTS0 and NUTS2

# 

1.  From the github repository <https://github.com/barcaroli/LUCAS2022ShinyApp> 

- click on "Code" and choose the "Download zip" option

- download and expand the zip in a new folder, for instance:

      “C:\\Users\\username\\Documents\\LUCAS sample”



2.  If not yet installed, download and install R on your computer:
      - go to
        <https://cran.rstudio.com/bin/windows/base/R-4.0.5-win.exe>
      - install R
3.  From R, install the "shiny" package:
      - install.packages("shiny")
4.  Look for the path where R is installed, for example:

      - C:\Program Files\R\R-4.1.0

5.  Edit the sample2022\_maps.bat, it appears:

“C:\\Program Files\\R\\R-4.0.5\\bin\\Rscript.exe” -e
"shiny::runApp(‘C:\\…rest of the path…\\sample2022\_maps.R’,
launch.browser = TRUE)

If necessary:

- modify the path of the Rscript.exe (it depends on the last version of R
installed);

- modify the path of the folder where the files have
been downloaded. ATTENTION: IN THIS PATH YOU NEED THE DOUBLE SLASH \\

6.  Save and execute the .bat clicking twice on it

# 

Attention: sometimes, when running the first time, after pressing the ‘Click
button’, it may appear the error message:

Couldn’t normalize path in `addResourcePath`, with arguments: `prefix` =
‘PopupTable-0.0.1’; `directoryPath` = ’’

then do:

  - access the folder

C:\_name-library\\4.0

and copy there the folder “popup” (available with the other files in the
distribution) and re-run the sample2022\_maps.bat
