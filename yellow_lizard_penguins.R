## =============================================================================
##
## Script name: Yellow Lizard Penguins
##
## Purpose of the script: GitHub testing
##
## Author: Amalie Elisabeth Paulsen
##
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

## -----------------------------------------------------------------------------

## Average penguin body mass by species
species_bm <- penguins |>
  drop_na() |>
  summarize(mean = mean(body_mass_g), .by = species)

## -----------------------------------------------------------------------------