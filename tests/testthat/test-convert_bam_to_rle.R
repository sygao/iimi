test_that("run_defaults", {  
  rle_list <- convert_bam_to_rle(here::here("tests", "files", "reads_1.sorted.bam"))$"reads_1"

  expect_snapshot(rle_list@listData)
})
