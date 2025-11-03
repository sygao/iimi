prepared_unreliable_regions <- (
  combined_unreliable_regions %>%
  dplyr::filter(`1_4_0` == TRUE) %>%
  dplyr::select(Start, End, `Virus segment`, Categories)
)

rle_list <- convert_bam_to_rle(here::here("tests", "files", "reads_1.sorted.bam"))

test_that("run_with_defaults", {
  expect_snapshot(
    convert_rle_to_df(rle_list)
  )
})

test_that("run_with_unreliable_regions", {
  expect_snapshot(
    convert_rle_to_df(
      rle_list, unreliable_regions = prepared_unreliable_regions
    )
  )
})

test_that("unreliable_regions_has_effect", {
  unmasked_rles <- convert_rle_to_df(rle_list)
  
  masked_rles <- convert_rle_to_df(
    rle_list,
    unreliable_regions = prepared_unreliable_regions,
  )

  expect_snapshot(
    waldo::compare(
      unmasked_rles, masked_rles, 
      max_diffs = Inf,
      x_arg = "disabled", y_arg = "enabled"
    )
  )
})
