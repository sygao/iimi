# run_with_defaults

    Code
      df <- convert_rle_to_df(rle_list)

---

    Code
      df %>% dplyr::select(seg_id, iso_id, A_percent, C_percent, T_percent,
        GC_percent)
    Output
           seg_id   iso_id A_percent C_percent T_percent GC_percent
      1  at4zpfgj      ozx 0.2681833 0.1883247 0.2809036  0.4509131
      2  at4zpfgj koa3kpag 0.2681833 0.1883247 0.2809036  0.4509131
      3  qx9tftoq zz3exj6x 0.2677694 0.1909845 0.2797125  0.4525181
      4  wxn762t4 qqxfgg47 0.2687711 0.1843078 0.2818479  0.4493810
      5  wxn762t4 qqxfgg47 0.2687711 0.1843078 0.2818479  0.4493810
      6  0puj7meb      397 0.2713955 0.1850595 0.2815210  0.4470835
      7  0puj7meb pb7u9x1l 0.2713955 0.1850595 0.2815210  0.4470835
      8  tfyvouo8      wb4 0.2709946 0.1884042 0.2777748  0.4512306
      9  tfyvouo8 8mgrmyn4 0.2709946 0.1884042 0.2777748  0.4512306
      10 b96oqx77      h9j 0.2689392 0.1876160 0.2793299  0.4517309
      11 b96oqx77 t0bfutne 0.2689392 0.1876160 0.2793299  0.4517309

---

    Code
      df %>% dplyr::select(seg_id, iso_id, avg_cov, max_cov, seg_len)
    Output
           seg_id   iso_id     avg_cov max_cov seg_len
      1  at4zpfgj      ozx 0.005330941       1   18946
      2  at4zpfgj koa3kpag 0.005330941       1   18946
      3  qx9tftoq zz3exj6x 0.005337420       1   18923
      4  wxn762t4 qqxfgg47 0.010825875       1   18659
      5  wxn762t4 qqxfgg47 0.010825875       1   18659
      6  0puj7meb      397 0.005439759       1   18567
      7  0puj7meb pb7u9x1l 0.005439759       1   18567
      8  tfyvouo8      wb4 0.005392131       1   18731
      9  tfyvouo8 8mgrmyn4 0.005392131       1   18731
      10 b96oqx77      h9j 0.005354397       1   18863
      11 b96oqx77 t0bfutne 0.005354397       1   18863

---

    Code
      df %>% dplyr::select(seg_id, iso_id, cov_2_percent, cov_3_percent,
        cov_4_percent, cov_5_percent, cov_6_percent, cov_7_percent, cov_8_percent,
        cov_9_percent, cov_10_percent, )
    Output
           seg_id   iso_id cov_2_percent cov_3_percent cov_4_percent cov_5_percent
      1  at4zpfgj      ozx             0             0             0             0
      2  at4zpfgj koa3kpag             0             0             0             0
      3  qx9tftoq zz3exj6x             0             0             0             0
      4  wxn762t4 qqxfgg47             0             0             0             0
      5  wxn762t4 qqxfgg47             0             0             0             0
      6  0puj7meb      397             0             0             0             0
      7  0puj7meb pb7u9x1l             0             0             0             0
      8  tfyvouo8      wb4             0             0             0             0
      9  tfyvouo8 8mgrmyn4             0             0             0             0
      10 b96oqx77      h9j             0             0             0             0
      11 b96oqx77 t0bfutne             0             0             0             0
         cov_6_percent cov_7_percent cov_8_percent cov_9_percent cov_10_percent
      1              0             0             0             0              0
      2              0             0             0             0              0
      3              0             0             0             0              0
      4              0             0             0             0              0
      5              0             0             0             0              0
      6              0             0             0             0              0
      7              0             0             0             0              0
      8              0             0             0             0              0
      9              0             0             0             0              0
      10             0             0             0             0              0
      11             0             0             0             0              0

# run_with_unreliable_regions

    Code
      df <- convert_rle_to_df(rle_list, unreliable_regions = prepared_unreliable_regions)

---

    Code
      df %>% dplyr::select(seg_id, iso_id, A_percent, C_percent, T_percent,
        GC_percent)
    Output
           seg_id   iso_id A_percent C_percent T_percent GC_percent
      1  at4zpfgj      ozx 0.2681833 0.1883247 0.2809036  0.4509131
      2  at4zpfgj koa3kpag 0.2681833 0.1883247 0.2809036  0.4509131
      3  qx9tftoq zz3exj6x 0.2677694 0.1909845 0.2797125  0.4525181
      4  wxn762t4 qqxfgg47 0.2687711 0.1843078 0.2818479  0.4493810
      5  wxn762t4 qqxfgg47 0.2687711 0.1843078 0.2818479  0.4493810
      6  0puj7meb      397 0.2713955 0.1850595 0.2815210  0.4470835
      7  0puj7meb pb7u9x1l 0.2713955 0.1850595 0.2815210  0.4470835
      8  tfyvouo8      wb4 0.2709946 0.1884042 0.2777748  0.4512306
      9  tfyvouo8 8mgrmyn4 0.2709946 0.1884042 0.2777748  0.4512306
      10 b96oqx77      h9j 0.2689392 0.1876160 0.2793299  0.4517309
      11 b96oqx77 t0bfutne 0.2689392 0.1876160 0.2793299  0.4517309

---

    Code
      df %>% dplyr::select(seg_id, iso_id, avg_cov, max_cov, seg_len)
    Output
           seg_id   iso_id     avg_cov max_cov seg_len
      1  at4zpfgj      ozx 0.001477885       1   18946
      2  at4zpfgj koa3kpag 0.001477885       1   18946
      3  qx9tftoq zz3exj6x 0.005337420       1   18923
      4  wxn762t4 qqxfgg47 0.010825875       1   18659
      5  wxn762t4 qqxfgg47 0.010825875       1   18659
      6  0puj7meb      397 0.005439759       1   18567
      7  0puj7meb pb7u9x1l 0.005439759       1   18567
      8  tfyvouo8      wb4 0.001601623       1   18731
      9  tfyvouo8 8mgrmyn4 0.001601623       1   18731
      10 b96oqx77      h9j 0.005354397       1   18863
      11 b96oqx77 t0bfutne 0.005354397       1   18863

---

    Code
      df %>% dplyr::select(seg_id, iso_id, cov_2_percent, cov_3_percent,
        cov_4_percent, cov_5_percent, cov_6_percent, cov_7_percent, cov_8_percent,
        cov_9_percent, cov_10_percent, )
    Output
           seg_id   iso_id cov_2_percent cov_3_percent cov_4_percent cov_5_percent
      1  at4zpfgj      ozx             0             0             0             0
      2  at4zpfgj koa3kpag             0             0             0             0
      3  qx9tftoq zz3exj6x             0             0             0             0
      4  wxn762t4 qqxfgg47             0             0             0             0
      5  wxn762t4 qqxfgg47             0             0             0             0
      6  0puj7meb      397             0             0             0             0
      7  0puj7meb pb7u9x1l             0             0             0             0
      8  tfyvouo8      wb4             0             0             0             0
      9  tfyvouo8 8mgrmyn4             0             0             0             0
      10 b96oqx77      h9j             0             0             0             0
      11 b96oqx77 t0bfutne             0             0             0             0
         cov_6_percent cov_7_percent cov_8_percent cov_9_percent cov_10_percent
      1              0             0             0             0              0
      2              0             0             0             0              0
      3              0             0             0             0              0
      4              0             0             0             0              0
      5              0             0             0             0              0
      6              0             0             0             0              0
      7              0             0             0             0              0
      8              0             0             0             0              0
      9              0             0             0             0              0
      10             0             0             0             0              0
      11             0             0             0             0              0

# unreliable_regions_has_effect

    Code
      dplyr::bind_cols(unmasked_rle_list %>% dplyr::select(seg_id, iso_id,
        `disabled$avg_cov` = avg_cov), masked_rle_list %>% dplyr::select(
        `enabled$avg_cov` = avg_cov))
    Output
           seg_id   iso_id disabled$avg_cov enabled$avg_cov
      1  at4zpfgj      ozx      0.005330941     0.001477885
      2  at4zpfgj koa3kpag      0.005330941     0.001477885
      3  qx9tftoq zz3exj6x      0.005337420     0.005337420
      4  wxn762t4 qqxfgg47      0.010825875     0.010825875
      5  wxn762t4 qqxfgg47      0.010825875     0.010825875
      6  0puj7meb      397      0.005439759     0.005439759
      7  0puj7meb pb7u9x1l      0.005439759     0.005439759
      8  tfyvouo8      wb4      0.005392131     0.001601623
      9  tfyvouo8 8mgrmyn4      0.005392131     0.001601623
      10 b96oqx77      h9j      0.005354397     0.005354397
      11 b96oqx77 t0bfutne      0.005354397     0.005354397

---

    Code
      waldo::compare(unmasked_rle_list, masked_rle_list, max_diffs = Inf, x_arg = "disabled",
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

