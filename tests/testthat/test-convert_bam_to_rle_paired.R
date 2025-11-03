test_that("run_paired", {
  expect_snapshot(
    convert_bam_to_rle(
      here::here("tests", "files", "paired_1.sorted.bam"), 
      paired = TRUE
    )
  )
})

test_that("check_paired_rles", {
  rle_list <- convert_bam_to_rle(
      here::here("tests", "files", "paired_1.sorted.bam"), 
      paired = TRUE
    )$paired@listData
  
  expect_snapshot(rle_list$"i6xgwyiv")

  expect_snapshot(rle_list$"7jjo5z0x")

  expect_snapshot(rle_list$"937ob21p")
})