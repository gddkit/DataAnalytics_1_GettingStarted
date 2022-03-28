######################################################################

#tim has an SAT of 1680 (1500, 300), what is his percentile?
#------------------------------------------------------------------

# 1. Calculate percentile in R Studio using pnorm
timPercentile <- pnorm(1686, 1500, 300); timPercentile

# 2. Use formula to get Z score
zScore <- (1686 - 1500)/300; zScore

# 3. Use Z tables to get percentile

######################################################################

#what score does a student require to be in the 79.95 percentile?
#------------------------------------------------------------------

# 1. Use Z tables (or qnorm) to work out the zScore from the percentage
zScore <- qnorm(0.7995)

# 2. Use formula to get the grade (which is 1752)
grade <- zScore * 300 + 1500; grade











