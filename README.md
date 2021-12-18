
<!-- README.md is generated from README.Rmd. Please edit README.Rmd file -->

This shiny app allows to visualize interactively the points selected in
the 2022 round of Eurostat Land Use and Land Cover Survey (LUCAS).

################################################################# 

Instructions to install and launch the app for visualising the sampled
points in LUCAS 2022 in maps by NUTS0 and NUTS2

################################################################# 

Launch RStudio and from here run the scripts of interest.

When in RStudio, from the “Files” pane select:

-   “sample2022\_maps.R” for visualising LUCAS sample;

-   “sample2022\_maps\_modules.R” for visualising LUCAS modules
    sub-samples.

To activate, press the “launch binder” button:

[![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/barcaroli/LUCAS2022ShinyApp/HEAD?urlpath=rstudio)

################################################################# 

Launch Jupyter notebook for LUCAS selected points (still in
construction):

Jupyter notebook:
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/barcaroli/LUCAS2022ShinyApp/HEAD?filepath=LUCAS_selected_points.ipynb)

Launch Jupyter notebook for LUCAS modules (Copernicus, Grassland,
Extended Grassland, Soil, Landscape Features) selected points:

Jupyter notebook:
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/barcaroli/LUCAS2022ShinyApp/HEAD?filepath=LUCAS_modules_selected_points.ipynb)

################################################################# 

Installation on your computer

################################################################# 

1.  From the github repository <https://github.com/barcaroli/LUCAS2022>
    download the whole repository in a new folder (for instance:

“C:\\Users\\username\\Documents\\LUCAS sample”)

1.  If not yet installed, download and install R on your computer:
    -   go to
        <https://cran.rstudio.com/bin/windows/base/R-4.0.5-win.exe>
    -   install R
2.  Look for the path where R is installed, for example:

C:Files.5

3.  Edit the sample2022\_maps.bat, it appears:

“C:\\Program Files\\R\\R-4.0.5\\bin\\Rscript.exe” -e
"shiny::runApp(‘C:\\…rest of the path…\\sample2022\_maps.R’,
launch.browser = TRUE)

If necessary:

modify the path of the Rscript.exe (it depends on the last version of R
installed);

indicate the username in the path of the folder where the files have
been downloaded.

4.  Save and execute the .bat clicking twice on it

##################################### 

Attention: if when running the first time, after pressing the ‘Click
button’, it may appear the error message:

Couldn’t normalize path in `addResourcePath`, with arguments: `prefix` =
‘PopupTable-0.0.1’; `directoryPath` = ’’

then do:

-   access the folder

C:\_name-library\\4.0

and copy there the folder “popup” (available with the other files in the
distribution) and re-run the sample2022\_maps.bat
