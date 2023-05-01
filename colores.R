library(RColorBrewer)
display.brewer.all(type="seq")

par(mar=c(8,1,8,1))
N <- 9
mypalette <- brewer.pal(N,"RdYlBu")
image(1:9,1,as.matrix(1:N),col=mypalette,xlab="RdYlBu (sequential)",
      ylab="",xaxt="n",yaxt="n",bty="n")

display.brewer.pal(n=11,"RdYlBu")
display.brewer.pal(n=11,"RdYlBu")[-(2:4)]
brewer.pal(n=11,"RdYlBu")[-(2:4)]


brewer.pal(5,"Purples")

display.brewer.pal(5,"Purples")

display.brewer.all(type="all")

palette <- brewer.pal(5, "RdYlBu")[-(2:4)]

display.brewer.pal(5, "RdYlBu")

display.brewer.pal(9, "RdYlBu")
display.brewer.pal(5, "RdYlBu")
brewer.pal(5, "RdYlBu")

v=c(1:5)
v[-(2:4)]

palette=c("red","blue")

palette=c("#D7191C", "#2C7BB6")

ggplot(gm2007, aes(x=lifeExp,y=reorder(country,lifeExp), color=lifeExp))+
  geom_point(size=3)+
  geom_segment(aes(x=0,xend=lifeExp, y=country,yend=country))+
  scale_color_gradientn(colors = palette)

promedio_lifeExp = mean(gapminder$lifeExp)
ggplot(gm2007, aes(x=lifeExp,y=reorder(country,lifeExp), color=lifeExp))+
  geom_point(size=3)+
  geom_segment(aes(x=0,xend=lifeExp, y=country,yend=country))+
  scale_color_gradientn(colors = palette)+
  geom_vline(xintercept = promedio_lifeExp, color="grey40", linetype=3)+
  theme_classic()+
  scale_x_continuous("", expand=c(0,0),limits = c(0,90), position="top")+
  theme(
    axis.text =element_text(color="black"),
    axis.line.y=element_blank(),
    axis.line.x=element_blank()
  )
  annotate("curve",
           )
  
  basic <- ggplot( mtcars , aes(x=mpg, y=wt)) +
    geom_point()
  basic +
    theme(
      #rect=element_rect(fill = "green", size=10),
      plot.background = element_rect(fill = "grey90", color="red", linewidth = 2),
      panel.background = element_rect(fill = "red",color="blue")
      #panel.border = element_rect(color = "green", linewidth = 20)
    )
  
   
  
  # Create an empty plot
  ggplot() +
    # Add a blank geom_rect layer and specify the color palette
    geom_rect(aes(xmin = 0, xmax = 1, ymin = 0, ymax = 1), fill = "#D7191C") +
    scale_fill_manual(values = c("#D7191C", "#2C7BB6"))
