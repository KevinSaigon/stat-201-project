plot_histogram <- function(df, col, bin_width, is_bellcurve) {
    # function to plot histogram with a vertical line indicating the mean, 
    # with or without the Gaussian curve
    #  
    # @params df: a dataframe
    # @params col: column name (string)
    # @params bin_width: int
    # @params is_bellcurve: whether you want the bell curve option or not (bool),
    #                       default is FALSE
    # @return: a plot object so that you can customize the title and axis with labs()

    # @examples: plot_histogram(summer_resampled_means, "mean_age", 0.1, TRUE)

    plot <- df %>%
        ggplot(aes(x=pull(df, col))) +
        geom_text(aes(x = mean(pull(df, col)), 
                      y=0,
                      label=mean(pull(df, col)),
                      hjust=0,
                      vjust=1),
                  color="blue") +
        xlab(col)
        
    if (missing(is_bellcurve) || (is_bellcurve == FALSE)) {
        plot <- plot + 
        geom_histogram(binwidth=bin_width, color="white", alpha=0.5) +
        ylab("Count") +
        ggtitle(paste0("Distribution of ", col))
    } else {
        plot <- plot +
        geom_histogram(aes(y=..density..), binwidth=bin_width, color="white", alpha=0.5) +
        stat_function(fun=dnorm, color="red", args=list(mean=mean(pull(df, col)), 
                                                        sd=sd(pull(df, col)))) +
        ylab("Probability density") +
        ggtitle(paste0("Distribution of ", col))
    }
    
    return (plot)
}