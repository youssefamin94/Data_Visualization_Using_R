df1 = read.csv(file = 'F:/College/semster 5/Data Visualization/project/df_end2.csv')
#reading the dataframe
#install.packages('ggplot2')
#install.packages('plotly')
#install.packages('highcharter')
library('ggplot2')
library('plotly')
library('highcharter')
#installing and calling the necessary libraries that we'll be utilizing which are : ggplot2, plotly and highcharter. 
#setting column genres on x axis and factored release month on y axis.




# Interactive Pie-Chart Director of Top rated movies and their revenues
# dyplr package get top rated movie for each director
s = df1 %>% group_by(director) %>% slice(which.max(vote_average))
# get the top 10 rated movies rows from the set of movies of best movie of each director
s2 = head(s[order(s['vote_average'], decreasing= T),], n = 10)
# Using Highcharter Package and dyplr(data manipulation)
hc = s2 %>% hchart("pie", hcaes(x = director, y = revenue_adj), name = "revenue")
hc


#Bin2d Heat map genre-release month
bin2dplot = ggplot(df1,aes(x=genres, y=factor(release_month)))
#plotting using bin2d plot where the intensity of the color shows the count of movies in a specific genre that was made in a specific month.
bin2dplot = bin2dplot+geom_bin2d()
bin2dplot = bin2dplot+theme(axis.text.x = element_text(angle = 90, hjust = 1))
bin2dplot
#adding interaction: hovering on a rectangle shows the count of movies.
ggplotly(bin2dplot)


#Scatter-Plot
scatter_plot = ggplot(df1,aes(x=release_year_x, y=runtime))
#setting column run time on y axis and release year on x axis.
scatter_plot = scatter_plot + geom_point(alpha=0.5, size=5, aes(color=vote_average))
#adding interaction: the color range is determined by the span of the possible values of average votes.
scatter_plot = scatter_plot + ylim(80,200) + xlim(1965,2015)
#setting the limits of both axes.
scatter_plot = scatter_plot + scale_color_gradient(low="yellow", high="purple")
#adjusting colors of the scale
scatter_plot = scatter_plot + ggtitle("Variation of Film Duration Throughout The Years") + ylab("Runtime (minutes)") + xlab("Release Year")
#setting labels for the graph
ggplotly(scatter_plot)
#showing final plot.

# Bar-Plot Genre-Country
a = df1[df1$country %in% c('United States', 'Canada','United Kingdom','France','Germany','India','Australia','Italy','Mexico','Turkey'),] 
# Get Sum of revenue of all movies in same genre from the same country
result = aggregate(revenue_adj ~ country+genres, a, sum)
pl = ggplot(result ,aes(x=country,y=revenue_adj))
# Stat identity use given Y
pl =pl + geom_bar(aes(fill=genres),stat = "identity")
ggplotly(pl)












# Pie-Chart Director-Total Revenue
# Sum of revenue for all movies for same director(~ means revenue as a function of director (split revenue for each director alone then Sum))  )
agg_result_pie = aggregate(revenue_adj ~ director, df, sum)
#Get top 7 director based on revenue
df_pie = head(agg_result_pie[order(agg_result_pie['revenue_adj'], decreasing= T),], n = 7)
colors_of_pie = c("#000000", "#E69F00", "#56B4E9", "#009E73","#F0E442","#D55E00", "#CC79A7")
pie_plot = ggplot(df_pie, aes(x="", y=revenue_adj, fill=director)) + geom_bar(stat='identity',width=1, color='white') + coord_polar("y",start=0)+theme_void() + scale_fill_manual(values = colors_of_pie)
pie_plot

