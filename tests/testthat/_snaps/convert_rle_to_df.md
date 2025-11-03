# run_with_defaults

    Code
      convert_rle_to_df(rle_list)
    Output
           seg_id   iso_id                            virus_name sample_id A_percent
      1  at4zpfgj      ozx Grapevine leafroll-associated virus 1   reads_1 0.2681833
      2  at4zpfgj koa3kpag Grapevine leafroll-associated virus 1   reads_1 0.2681833
      3  qx9tftoq zz3exj6x Grapevine leafroll-associated virus 1   reads_1 0.2677694
      4  wxn762t4 qqxfgg47 Grapevine leafroll-associated virus 1   reads_1 0.2687711
      5  wxn762t4 qqxfgg47 Grapevine leafroll-associated virus 1   reads_1 0.2687711
      6  0puj7meb      397 Grapevine leafroll-associated virus 1   reads_1 0.2713955
      7  0puj7meb pb7u9x1l Grapevine leafroll-associated virus 1   reads_1 0.2713955
      8  tfyvouo8      wb4 Grapevine leafroll-associated virus 1   reads_1 0.2709946
      9  tfyvouo8 8mgrmyn4 Grapevine leafroll-associated virus 1   reads_1 0.2709946
      10 b96oqx77      h9j Grapevine leafroll-associated virus 1   reads_1 0.2689392
      11 b96oqx77 t0bfutne Grapevine leafroll-associated virus 1   reads_1 0.2689392
         C_percent T_percent GC_percent     avg_cov max_cov seg_len cov_2_percent
      1  0.1883247 0.2809036  0.4509131 0.005330941       1   18946             0
      2  0.1883247 0.2809036  0.4509131 0.005330941       1   18946             0
      3  0.1909845 0.2797125  0.4525181 0.005337420       1   18923             0
      4  0.1843078 0.2818479  0.4493810 0.010825875       1   18659             0
      5  0.1843078 0.2818479  0.4493810 0.010825875       1   18659             0
      6  0.1850595 0.2815210  0.4470835 0.005439759       1   18567             0
      7  0.1850595 0.2815210  0.4470835 0.005439759       1   18567             0
      8  0.1884042 0.2777748  0.4512306 0.005392131       1   18731             0
      9  0.1884042 0.2777748  0.4512306 0.005392131       1   18731             0
      10 0.1876160 0.2793299  0.4517309 0.005354397       1   18863             0
      11 0.1876160 0.2793299  0.4517309 0.005354397       1   18863             0
         cov_3_percent cov_4_percent cov_5_percent cov_6_percent cov_7_percent
      1              0             0             0             0             0
      2              0             0             0             0             0
      3              0             0             0             0             0
      4              0             0             0             0             0
      5              0             0             0             0             0
      6              0             0             0             0             0
      7              0             0             0             0             0
      8              0             0             0             0             0
      9              0             0             0             0             0
      10             0             0             0             0             0
      11             0             0             0             0             0
         cov_8_percent cov_9_percent cov_10_percent
      1              0             0              0
      2              0             0              0
      3              0             0              0
      4              0             0              0
      5              0             0              0
      6              0             0              0
      7              0             0              0
      8              0             0              0
      9              0             0              0
      10             0             0              0
      11             0             0              0

# run_with_unreliable_regions

    Code
      convert_rle_to_df(rle_list, unreliable_regions = prepared_unreliable_regions)
    Output
           seg_id   iso_id                            virus_name sample_id A_percent
      1  at4zpfgj      ozx Grapevine leafroll-associated virus 1   reads_1 0.2681833
      2  at4zpfgj koa3kpag Grapevine leafroll-associated virus 1   reads_1 0.2681833
      3  qx9tftoq zz3exj6x Grapevine leafroll-associated virus 1   reads_1 0.2677694
      4  wxn762t4 qqxfgg47 Grapevine leafroll-associated virus 1   reads_1 0.2687711
      5  wxn762t4 qqxfgg47 Grapevine leafroll-associated virus 1   reads_1 0.2687711
      6  0puj7meb      397 Grapevine leafroll-associated virus 1   reads_1 0.2713955
      7  0puj7meb pb7u9x1l Grapevine leafroll-associated virus 1   reads_1 0.2713955
      8  tfyvouo8      wb4 Grapevine leafroll-associated virus 1   reads_1 0.2709946
      9  tfyvouo8 8mgrmyn4 Grapevine leafroll-associated virus 1   reads_1 0.2709946
      10 b96oqx77      h9j Grapevine leafroll-associated virus 1   reads_1 0.2689392
      11 b96oqx77 t0bfutne Grapevine leafroll-associated virus 1   reads_1 0.2689392
         C_percent T_percent GC_percent     avg_cov max_cov seg_len cov_2_percent
      1  0.1883247 0.2809036  0.4509131 0.001477885       1   18946             0
      2  0.1883247 0.2809036  0.4509131 0.001477885       1   18946             0
      3  0.1909845 0.2797125  0.4525181 0.005337420       1   18923             0
      4  0.1843078 0.2818479  0.4493810 0.010825875       1   18659             0
      5  0.1843078 0.2818479  0.4493810 0.010825875       1   18659             0
      6  0.1850595 0.2815210  0.4470835 0.005439759       1   18567             0
      7  0.1850595 0.2815210  0.4470835 0.005439759       1   18567             0
      8  0.1884042 0.2777748  0.4512306 0.001601623       1   18731             0
      9  0.1884042 0.2777748  0.4512306 0.001601623       1   18731             0
      10 0.1876160 0.2793299  0.4517309 0.005354397       1   18863             0
      11 0.1876160 0.2793299  0.4517309 0.005354397       1   18863             0
         cov_3_percent cov_4_percent cov_5_percent cov_6_percent cov_7_percent
      1              0             0             0             0             0
      2              0             0             0             0             0
      3              0             0             0             0             0
      4              0             0             0             0             0
      5              0             0             0             0             0
      6              0             0             0             0             0
      7              0             0             0             0             0
      8              0             0             0             0             0
      9              0             0             0             0             0
      10             0             0             0             0             0
      11             0             0             0             0             0
         cov_8_percent cov_9_percent cov_10_percent
      1              0             0              0
      2              0             0              0
      3              0             0              0
      4              0             0              0
      5              0             0              0
      6              0             0              0
      7              0             0              0
      8              0             0              0
      9              0             0              0
      10             0             0              0
      11             0             0              0

# unreliable_regions_has_effect

    Code
      waldo::compare(unmasked_rles, masked_rles, max_diffs = Inf, x_arg = "disabled",
        y_arg = "enabled")
    Output
      disabled vs enabled
                           avg_cov
      - disabled[1, ]  0.005330941
      + enabled[1, ]   0.001477885
      - disabled[2, ]  0.005330941
      + enabled[2, ]   0.001477885
        disabled[3, ]  0.005337420
        disabled[4, ]  0.010825875
        disabled[5, ]  0.010825875
        disabled[6, ]  0.005439759
        disabled[7, ]  0.005439759
      - disabled[8, ]  0.005392131
      + enabled[8, ]   0.001601623
      - disabled[9, ]  0.005392131
      + enabled[9, ]   0.001601623
        disabled[10, ] 0.005354397
        disabled[11, ] 0.005354397
      
           disabled$avg_cov | enabled$avg_cov     
       [1] 0.0053           - 0.0015          [1] 
       [2] 0.0053           - 0.0015          [2] 
       [3] 0.0053           | 0.0053          [3] 
       [4] 0.0108           | 0.0108          [4] 
       [5] 0.0108           | 0.0108          [5] 
       [6] 0.0054           | 0.0054          [6] 
       [7] 0.0054           | 0.0054          [7] 
       [8] 0.0054           - 0.0016          [8] 
       [9] 0.0054           - 0.0016          [9] 
      [10] 0.0054           | 0.0054          [10]
      [11] 0.0054           | 0.0054          [11]

