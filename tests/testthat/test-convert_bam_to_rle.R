bamFilePath <- here::here("tests", "files", "reads_1.sorted.bam")

test_that("read_bamfile", {
  alignments <- GenomicAlignments::readGAlignments(
    Rsamtools::BamFile(bamFilePath)
  )

  expect_snapshot(alignments)
})

test_that("run_defaults", {  
  rleList <- convert_bam_to_rle(bamFilePath)$"reads_1"

  expect_snapshot(rleList@listData)

  alignments <- GenomicAlignments::readGAlignments(
    Rsamtools::BamFile(bamFilePath)
  )

  coverages <- GenomicAlignments::coverage(alignments)

  for (sequenceName in rleList) {
    expect_equal(coverages$sequenceName, rleList$sequenceName)
  }
})
