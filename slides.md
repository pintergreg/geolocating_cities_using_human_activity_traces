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

# YJMob100K

- data is from the Yahoo! Japan smartphone application
- published as open data in 2023 [@yabe_2024_10836269]
    - as a part of the HuMob Challenge 2023 [@yabe2023humob]
- follows 100,000 people
- during consecutive 75 days
    - not known which days
- in a 100 km by 100 km area
- *somewhere* in Japan

## data sample

|   uid |   d |   t |   x |   y |
|------:|----:|----:|----:|----:|
|     0 |   0 |   1 |  79 |  86 |
|     0 |   0 |   2 |  79 |  86 |
|     0 |   0 |   8 |  77 |  86 |
|     0 |   0 |   9 |  77 |  86 |
|     0 |   0 |  19 |  81 |  89 |

where d is day, t is time (0-47), x and y is the location in a 200 × 200 grid

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

<!-- <i class="fa-solid"></i> -->
![](assets/empty.drawio.svg){width=48}
:::
::: {.fragment fragment-index=2 .current-visible}
![](figures/user_heatmap_rot.png)

<!-- <i class="fa-solid fa-rotate-left"></i> -->
![](assets/rotate.drawio.svg){width=48}
:::
::: {.fragment fragment-index=3}
![](figures/user_heatmap_rotrot.png)

<!-- <i class="fa-solid fa-rotate-left"></i><i class="fa-solid fa-rotate-left"></i> -->
![](assets/rotate.drawio.svg){width=48}
![](assets/rotate.drawio.svg){width=48}
:::
::::::
:::::::::
::::::::: {.column width="33%" .fragment fragment-index=4}
![](figures/user_heatmap_fixed.png)

<!-- <i class="fa-solid fa-arrows-left-right"></i> -->
<!-- <i class="fa-solid fa-arrows-left-right-to-line"></i> -->
![](assets/mirror.drawio.svg){width=48}
:::::::::
::::::::::::

::: {.fragment fragment-index=5}
[problem]{.text-color-aurora1}: the heatmap contains no geographic information
:::

# template matching

![via [Wikipedia](https://en.wikipedia.org/wiki/File:Template_Matching.png) by Laserlicht and Benjamin Watson | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)](figures/Template_Matching.png){.frame}

## applying template matching to the problem

:::::::::::: {.columns}
::::::::: {.column width="60%"}
- a map is required where 1 pixel is 500

![](figures/large_voyager_gamma-50.png)

:::::::::
::::::::: {.column width="40%"}
- template: 200×200 image
- 1 pixel is 500 m

![](figures/activity_heatmap_fixed.png){width=200}

:::::::::
::::::::::::

## preparing the template -- thresholding

:::::::::::: {.columns}
::::::::: {.column width="50%" .mt-1}
::::::: {.r-stack}
::: {.fragment .fade-out fragment-index=1}
![&nbsp;](figures/activity_histogram.svg)

:::
::: {.fragment .current-visible fragment-index=1}
![threshold = 75](figures/activity_histogram_threshold.svg)
:::
:::::::
:::::::::
::::::::: {.column width="50%"}
::::::: {.r-stack}
::: {.fragment .fade-out fragment-index=1}
![](figures/activity_heatmap_fixed.png)

:::
::: {.fragment .current-visible fragment-index=1}
![](figures/activity_cut.png)
:::
:::::::
:::::::::
::::::::::::

## geolocating with template matching

:::::::::::: {.columns}
::::::::: {.column width="60%"}
:::::: {.r-stack}
::: {.fragment .fade-out fragment-index=1}
![&nbsp;](figures/geolocating/unstretched/large_500_500.png){width=560}
:::
::: {.fragment .current-visible fragment-index=1}
![&nbsp;](figures/geolocating/unstretched/location_500_500.png){width=560}
:::
::: {.fragment .current-visible fragment-index=2}
![&nbsp;](figures/geolocating/unstretched/location_explanation.png){width=560}
:::
::: {.fragment .current-visible fragment-index=3}
![&nbsp;](figures/geolocating/unstretched/template_matched.png){width=560}
:::
::::::
:::::::::
::::::::: {.column width="40%" .text-smaller}
![](figures/activity_cut_200.png){width=168}

::: {.fragment fragment-index=2}
- relative location: 127, 358
- absolute
    - [EPSG:2449](https://spatialreference.org/ref/epsg/2449/): -64000, -64000
    - [WGS84](https://spatialreference.org/ref/epsg/4326/): 136.4619, 35.42107
:::
:::::::::
::::::::::::

## verificating the geolocation

:::::::::::: {.columns}
::::::::: {.column width="50%"}
![](figures/geolocating/unstretched/template_matched.png)

:::::::::
::::::::: {.column width="50%"}
![](figures/geolocating/unstretched/template_matched_zoomed.png)

:::::::::
::::::::::::

## more transformation happened?

:::::::::::: {.columns}
::::::::: {.column width="55%"}
- the grid was rotated and mirrored
- what if a raster is not [exactly]{.text-color-aurora1} 500&nbsp;m&nbsp;×&nbsp;500&nbsp;m?
- because it was also shrunk or stretched

::: {.fragment}
template considers one pixel as one raster of the grid

it is difficult to shrink or stretch a pixel
:::

::: {.fragment}
the map can be shrunk and stretched [inversely]{.text-color-aurora1}

the value happened to be 10% shrink in width, 10% stretch in height
:::
:::::::::
::::::::: {.column width="45%" .fragment}
![](figures/geolocating/template_matched_zoomed_500_500.png){preview-image="figures/geolocating/unstretched/template_matched_zoomed.png" preview-fit="contain"}

a raster of a grid is actually 450&nbsp;m&nbsp;×&nbsp;550&nbsp;m
:::::::::
::::::::::::

## verification

:::::::::::: {.columns}
::::::::: {.column width="50%"}
![](figures/activity_count_coordinate_explanation_2449.png){.frame}

:::::::::
::::::::: {.column width="50%" .mt-2 .fragment}
1. estimate user's home location
2. associate rasters to municipalities
3. sum the estimated inhabitants<br>per municipalities
4. compare with census data [@estat2020population]

::: {.fragment}
![correlation coefficient (Pearson's R): 0.8879](figures/population_per_city_transparent.svg){preview-image="figures/population_per_city.svg" preview-fit="contain"}
:::
:::::::::
::::::::::::

# robustness check -- thresholding

:::::::::::: {.columns}
::::::::: {.column width="25%"}
![50](figures/threshold/threshold_50.svg){width=200}

![](figures/threshold/activity_cut_50.png){.frame}

:::::::::
::::::::: {.column width="25%"}
![500](figures/threshold/threshold_500.svg){width=200}

![](figures/threshold/activity_cut_500.png){.frame}

:::::::::
::::::::: {.column width="25%"}
![1000](figures/threshold/threshold_1000.svg){width=200}

![](figures/threshold/activity_cut_5000.png){.frame}

:::::::::
::::::::: {.column width="25%"}
![5000](figures/threshold/threshold_1000.svg){width=200}

![](figures/threshold/activity_cut_5000.png){.frame}

:::::::::
::::::::::::

::: notes
I've said that the threshold of 75 was selected arbitrarily.
Let me show that why that value has not too much impact on the geolocating.
:::

## anchor difference by threshold

![](figures/threshold_mod.svg)

::: {.text-smaller .narrow-table}
|   |  [25]{preview-image="figures/threshold/activity_cut_400_25.png"}|  [50]{preview-image="figures/threshold/activity_cut_400_50.png"}| [100]{preview-image="figures/threshold/activity_cut_400_100.png"}| [200]{preview-image="figures/threshold/activity_cut_400_200.png"}| [300]{preview-image="figures/threshold/activity_cut_400_300.png"}| [400]{preview-image="figures/threshold/activity_cut_400_400.png"}| [500]{preview-image="figures/threshold/activity_cut_400_500.png"}| [600]{preview-image="figures/threshold/activity_cut_400_600.png"}| [700]{preview-image="figures/threshold/activity_cut_400_700.png"}| [800]{preview-image="figures/threshold/activity_cut_400_800.png"}| [900]{preview-image="figures/threshold/activity_cut_400_900.png"}| [1000]{preview-image="figures/threshold/activity_cut_400_1000.png"}| [2000]{preview-image="figures/threshold/activity_cut_400_2000.png"}| [3000]{preview-image="figures/threshold/activity_cut_400_3000.png"}| [4000]{preview-image="figures/threshold/activity_cut_400_4000.png"}| [5000]{preview-image="figures/threshold/activity_cut_400_5000.png"}|
|--:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|----:|----:|
| x |  0 |  0 | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  |-228| -228|  65 |  61 | -387| -387|
| y |  0 |  0 | 0  | 1  | 1  | 1  | 1  | 1  | 1  | 1  |  44|   45| 150 | 149 |   78|   79|

:::

## different cities, different data

:::::::::::: {.columns}
::::::::: {.column width="50%"}
![](figures/toronto/landuse.png){#toronto compare="figures/toronto/activity.png" before="OSM" after="MPD" start="100" width="475"}

Toronto
:::::::::
::::::::: {.column width="50%" .fragment}
![](figures/london/landuse.png){#london compare="figures/london/activity.png" before="OSM" after="MPD" start="100" width="475"}

London
:::::::::
::::::::::::

## different cities, different data

:::::::::::: {.columns}
::::::::: {.column width="50%"}
![](figures/helsinki/landuse.png){#helsinki compare="figures/helsinki/activity.png" before="OSM" after="MPD" start="50" width="475"}

Helsinki
:::::::::
::::::::: {.column width="50%"}
![](figures/dallas/landuse.png){#dallas compare="figures/dallas/activity.png" before="OSM" after="MPD" start="50" width="475"}

Dallas--Fort Worth
:::::::::
::::::::::::

## different cities, different data -- results

:::::::::::: {.columns}
::::::::: {.column width="50%"}
:::::: {.r-stack}
::: {.fragment .fade-out fragment-index=2}
![Toronto](figures/toronto/location.png){.frame}
:::
::: {.fragment fragment-index=2}
![Helsinki](figures/helsinki/location.png){.frame}
:::
::::::
:::::::::
::::::::: {.column width="50%"}
:::::: {.r-stack}
::: {.fragment .current-visible fragment-index=1}
![London](figures/london/location.png){.frame}
:::
::: {.fragment .current-visible fragment-index=2}
![London](figures/london/location.png){.frame}
:::
::: {.fragment fragment-index=3}
![Dallas--Fort Worth](figures/dallas/location.png){.frame}
:::
::::::
:::::::::
::::::::::::

# references

::: {#refs .text-smaller}
:::
