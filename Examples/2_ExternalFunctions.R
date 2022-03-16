# Author:       Niall McGuinness
# Title:        External Functions
# Description:  Illustrating how we can add external functions to a re-usable external file
# Date:         03/2022
# Version:      1.0
# See:          https://www.earthdatascience.org/courses/earth-analytics/multispectral-remote-sensing-data/source-function-in-R/

myFunc <- function(a,b){
  a - b
}
myFunc(1,2)