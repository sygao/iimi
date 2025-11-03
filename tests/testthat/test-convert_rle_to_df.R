prepared_unreliable_regions <- (
  combined_unreliable_regions %>%
    dplyr::filter(`1_4_0` == TRUE) %>%
    dplyr::select(Start, End, `Virus segment`, Categories)
)

rle_list <- convert_bam_to_rle(here::here("tests", "files", "reads_1.sorted.bam"))

test_that("run_with_defaults", {
  expect_snapshot(
    df <- convert_rle_to_df(rle_list)
  )

  expect_snapshot(
    df %>% 
      dplyr::select(seg_id, iso_id, A_percent, C_percent, T_percent, GC_percent)
  )

  expect_snapshot(
    df %>% 
      dplyr::select(seg_id, iso_id, avg_cov, max_cov, seg_len)
  )

  expect_snapshot(
    df %>% 
      dplyr::select(
        seg_id, 
        iso_id, 
        cov_2_percent, 
        cov_3_percent, 
        cov_4_percent,
        cov_5_percent,
        cov_6_percent,
        cov_7_percent,
        cov_8_percent,
        cov_9_percent,
        cov_10_percent,
      )
  )
})

test_that("run_with_unreliable_regions", {
  expect_snapshot(
    df <- convert_rle_to_df(
      rle_list, unreliable_regions = prepared_unreliable_regions
    )
  )

  expect_snapshot(
    df %>% 
      dplyr::select(seg_id, iso_id, A_percent, C_percent, T_percent, GC_percent)
  )

  expect_snapshot(
    df %>% 
      dplyr::select(seg_id, iso_id, avg_cov, max_cov, seg_len)
  )

  expect_snapshot(
    df %>% 
      dplyr::select(
        seg_id, 
        iso_id, 
        cov_2_percent, 
        cov_3_percent, 
        cov_4_percent,
        cov_5_percent,
        cov_6_percent,
        cov_7_percent,
        cov_8_percent,
        cov_9_percent,
        cov_10_percent,
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
