test_that("read_alignments_single", {
  expect_snapshot(
    read_bam_alignments(here::here("tests", "files", "vueoserj.bam"), paired = FALSE)
  )
})

test_that("read_alignments_paired", {
  expect_snapshot(
    read_bam_alignments(here::here("tests", "files", "p20hs8ax.bam"), paired = TRUE)
  )
})

test_that("run_defaults", {  
  expect_snapshot(
    convert_bam_to_rle(here::here("tests", "files", "reads_1.sorted.bam"))
  )
})

test_that("run_single_bulk", {
  expect_snapshot(
    convert_bam_to_rle(
      here::here("tests", "files", "single.sorted.bam"), 
      paired = FALSE
    )
  )
})

test_that("run_paired_bulk", {
  expect_snapshot(
    convert_bam_to_rle(
      here::here("tests", "files", "paired_1.sorted.bam"), 
      paired = TRUE
    )
  )
})