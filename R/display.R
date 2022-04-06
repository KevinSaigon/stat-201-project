table_render <- function(df_list) {
    # function to render dataframe side by side as a notebook html format 
    # to enhance readability
    # @params df_list: a list of data frame to be rendered
    # @examples: df_list = list(head(winter_resampled_means, 17), 
    #                           head(summer_resampled_means, 17))
    #            table_render(df_list)

    # theme setter for html rendering
    tt3 <- ttheme_minimal(
    core=list(bg_params = list(fill = blues9[1:4], col=NA),
             fg_params=list(fontface=3)),
    colhead=list(fg_params=list(col="navyblue", fontface=4L)),
    rowhead=list(fg_params=list(col="orange", fontface=3L)))

    grob_list = list()

    for (df in df_list) {
        grob = tableGrob(df, theme = tt3)
        grob_list = append(grob_list, list(grob))
    }

    grid.arrange(
        arrangeGrob(grobs = grob_list, nrow = 1)
    )
}