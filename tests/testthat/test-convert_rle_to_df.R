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

  # Check average coverage against `samtools coverage reads_1.sorted.bam --ff UNMAP` output
  samtools_coverage_df <- read.csv(
    here::here("tests", "files", "samtools_coverage_read_sorted.csv"),
    sep="\t"
  )

  for (ii in 1:nrow(df)) {
    expect_equal(
      df[ii,"avg_cov"] * 100, 
      dplyr::filter(
        samtools_coverage_df,
        `X.rname` == df[ii,"seg_id"]
      )[,"coverage"],
      tolerance=1e-5
    )
  }

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
  unmasked_rle_list <- convert_rle_to_df(rle_list)
  
  masked_rle_list <- convert_rle_to_df(
    rle_list,
    unreliable_regions = prepared_unreliable_regions,
  )
  
  expect_snapshot(
    dplyr::bind_cols(
      unmasked_rle_list %>% dplyr::select(seg_id, iso_id, "disabled$avg_cov" = avg_cov),
      masked_rle_list %>% dplyr::select("enabled$avg_cov" = avg_cov)
    )
  )

  expect_snapshot(
    waldo::compare(
      unmasked_rle_list, masked_rle_list, 
      max_diffs = Inf,
      x_arg = "disabled", y_arg = "enabled"
    )
  )
})
