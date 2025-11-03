test_that("run_paired", {
  expect_snapshot(
    convert_bam_to_rle(
      here::here("tests", "files", "paired_1.sorted.bam"), 
      paired = TRUE
    )
  )
})