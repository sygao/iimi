test_that("run_defaults", {  
  expect_snapshot(
    convert_bam_to_rle(here::here("tests", "files", "reads_1.sorted.bam"))
  )
})
