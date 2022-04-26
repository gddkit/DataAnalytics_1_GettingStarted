# Author:       Niall McGuinness
# Title:        Inference for Numerical Data
# Description:  Illustrating concepts relating to t-distribution
# Date:         04/2022
# Version:      1.0
# See:          https://gallery.shinyapps.io/dist_calc/
#               Videoes for Chapter 7: Inference for Numerical Data
#               - https://www.openintro.org/go?id=video_stat_t_distribution&referrer=/book/os/index.php
#               - https://www.openintro.org/go?id=video_stat_inference_for_a_mean&referrer=/book/os/index.php
#               - https://www.openintro.org/go?id=video_stat_inference_for_paired_data&referrer=/book/os/index.php
#               - https://www.openintro.org/go?id=video_stat_inference_diff_of_two_means&referrer=/book/os/index.php


numberSamples <- 10

# Taken from slide example on Friday 13th - see Slide 33 of 222
pValueFriday13th <- 2 * pt(4.94, df = numberSamples - 1, lower.tail = FALSE)
print(paste("The p-value for Friday 13th survey is", pValueFriday13th))

# Calculate t* for Confidence Interval at 95% - see Slide 44 of 222
# Why 0.975? Because we have 2.5% on each side of the t-distribution
tStar <- qt(p = 0.975, df = numberSamples - 1)
print(paste("The t* value for Friday 13th survey is", tStar))
