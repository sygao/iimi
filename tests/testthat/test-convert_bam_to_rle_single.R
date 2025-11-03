test_that("run_single", {
  expect_snapshot(
    convert_bam_to_rle(
      here::here("tests", "files", "single.sorted.bam"), 
      paired = FALSE
    )
  )
})
