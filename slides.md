---
title: geolocating cities using human activity traces
author: Gergő Pintér<span class="text-color-frost1">,</span> PhD
date: |
    gergo.pinter<span class="text-color-frost1">@</span>uni-corvinus.hu
institute: |
    ANETI Lab <span class="text-color-frost1">/</span> CIAS <br>
    Department of Network Science <span class="text-color-frost1">/</span> IDAIS <br>
    Corvinus University of Budapest
lang: en-US
theme: solarized
title-slide-attributes:
    data-background-color: "#2e3440"
    data-background-image: assets/CC-BY.svg
    data-background-size: 125px
    data-background-position: 1.5rem calc(100% - 1.5rem)
slideNumber: "true"
showSlideNumber: "print"
revealjs-url: "assets/reveal.js-5.2.1/"
---

#

:::::: {.r-stack}
::: {.fragment data-fragment-index=1 .fade-out}
![&nbsp;](figures/bud_empty.svg){height=550}
:::
::: {.fragment data-fragment-index=1 .current-visible}
![37 data points from Weeplace checkins [@chen_2022_6369319]](figures/bud_05pct.svg){height=550}
:::
::: {.fragment data-fragment-index=2 .current-visible}
![37 data points (0.5% of unique places)](figures/bud_05pct_zoom.svg){height=550}
:::
::: {.fragment data-fragment-index=3 .current-visible}
![37 data points (0.5% of unique places)](figures/bud_05pct_zoom_map.svg){height=550}
:::
::: {.fragment data-fragment-index=4 .current-visible}
![70 data points (2% of unique places)](figures/bud_2pct.svg){height=550}
:::
::: {.fragment data-fragment-index=5 .current-visible}
![697 data points (20% of unique places)](figures/bud_20pct.svg){height=550}
:::
::: {.fragment data-fragment-index=6}
![3485 data points (all unique places)](figures/bud_100pct.svg){height=550}
:::
::::::

::: notes
- let's play game in which I show you maps, and you can guess the city
- 

:::

## human activity is tightly connected to the urban areas

- only ~700 data points and Budapest is almost recognizable
- ~3500 data points reveals the silhouette of the city
    - although the distribution is uneven

<!--::: {.r-fit-text}
human activity is tightly connected to the urban areas
:::-->

## {data-background-image="figures/nasa.jpg"}

::: {.text-color-light-shadowed .mt-8}
photo by NASA | NASA's Earth Observatory
:::

## {data-background-image="figures/central_europe.png"}

::: notes
mobile positioning data my not represent everyone, but we can clearly see the main hotspots of human activity
:::

<!--## {data-background-image="figures/central_europe_light.png"}

- some cities, regions are underrepresented
    - rural settlements
- some people may not represented in the data
- mobile positioning data may not represent everyone, but the hotsports of human activity are already
    - more and more data is collected
    -->

# YJ100KMob

- published as open data in 2023
    - as a part of the HuMob Challenge 2023
- follows 100,000 people
- during 90 days
- in a 100 km by 100 km area
- somewhere in Japan

## visualizing mobility data

:::::::::::: {.columns}
::::::::: {.column width="50%"}
![activity count (log)](figures/activity_heatmap.png){.frame}

:::::::::
::::::::: {.column width="50%"}
![unique user count (log)](figures/user_heatmap.png){.frame data-preview-image="figures/user_heatmap_v2.png" data-preview-fit="contain"}

:::::::::
::::::::::::

::: {.text-smaller}
reproductions of figure 8 [@yabe2024yjmob100k]
:::

# finding out which city it is

1. Japan is an island country
2. the largest cities are on the shores
3. 100 km by 100 km observation area
4. some low activity part of the heatmap must be water

## finding out which city it is -- largest cities

:::::::::::: {.columns}
::::::::: {.column width="33%" .fragment}
![Tokyo (1) and Yokohama (2)](figures/tokyo_and_yokohama_gamma-50.png){data-preview-image="figures/tokyo_and_yokohama_gamma-50.png" data-preview-fit="contain"}

:::::::::
::::::::: {.column width="33%" .fragment}
![Osaka (3)](figures/osaka_gamma-50.png){data-preview-image="figures/osaka_gamma-50.png" data-preview-fit="contain"}

:::::::::
::::::::: {.column width="33%" .fragment}
![Nagoya (4)](figures/nagoya_gamma-50.png){data-preview-image="figures/nagoya_gamma-50.png" data-preview-fit="contain"}

:::::::::
::::::::::::

## finding out which city it is -- Nagoya

:::::::::::: {.columns}
::::::::: {.column width="33%"}
![](figures/nagoya_gamma-50.png){data-preview-image="figures/nagoya_gamma-50.png" data-preview-fit="contain"}

:::::::::
::::::::: {.column width="33%"}
:::::: {.r-stack}
::: {}
![](figures/user_heatmap.png)

<i class="fa-solid"></i>
:::
::: {.fragment fragment-index=2 .current-visible}
![](figures/user_heatmap_rot.png)

<i class="fa-solid fa-rotate-left"></i>
:::
::: {.fragment fragment-index=3}
![](figures/user_heatmap_rotrot.png)

<i class="fa-solid fa-rotate-left"></i><i class="fa-solid fa-rotate-left"></i>
:::
::::::
:::::::::
::::::::: {.column width="33%" .fragment fragment-index=4}
![](figures/user_heatmap_fixed.png)

<i class="fa-solid fa-arrows-left-right"></i>
:::::::::
::::::::::::

::: {.fragment fragment-index=5}
[problem]{.text-color-aurora1}: the heatmap contains no geographic information
:::

# references

::: {#refs}
:::
