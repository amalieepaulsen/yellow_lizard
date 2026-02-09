## =============================================================================
##
## Script name: Yellow Lizard Penguins
##
## Purpose of the script: GitHub testing
##
## Author: Amalie Elisabeth Paulsen
## Date created: 2026-02-09
##
## -----------------------------------------------------------------------------
##
## Notes: Something about penguins. For fun.
##
## =============================================================================

## Loading packages
library(palmerpenguins)
library(tidyverse)

# Custom settings
set_theme(theme_bw())

## -----------------------------------------------------------------------------

## Average penguin body mass by species
species_bm <- penguins |>
  drop_na() |>
  select(species, body_mass_g)

## -----------------------------------------------------------------------------

## Body mass box plot
species_bm |>
  ggplot(aes(x = species, y = body_mass_g, fill = species, alpha = 0.4)) +
  geom_boxplot() +
  theme(
    legend.position = "none",
    legend.title = element_blank()
  )

## -----------------------------------------------------------------------------

## heyyyyy