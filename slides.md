---
title: geolocating cities using human activity traces
author: Gergő Pintér<span class="text-color-frost1">,</span> PhD
date: gergo.pinter<span class="text-color-frost1">@</span>uni-corvinus.hu
institute: |
    ANETI Lab <span class="text-color-frost1">/</span> CIAS <br>
    Department of Network Science <span class="text-color-frost1">/</span> IDAIS <br>
    Corvinus University of Budapest
lang: en-US
theme: solarized
title-slide-attributes:
    data-background-color: "#2e3440"
    data-background-image: assets/by.svg
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


# references

::: {#refs}
:::
