test_that("run_single", {
  expect_snapshot(
    convert_bam_to_rle(
      here::here("tests", "files", "single.sorted.bam"), 
      paired = FALSE
    )
  )
})

test_that("check_single_rles", {
  rle_list <- convert_bam_to_rle(
    here::here("tests", "files", "single.sorted.bam"), 
    paired = FALSE
  )$single@listData

  expect_snapshot(rle_list$"0idllg2i")

  expect_snapshot(rle_list$"0v6dhby6")

  expect_snapshot(rle_list$"zs5acisd")
})
