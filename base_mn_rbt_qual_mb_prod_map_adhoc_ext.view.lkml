include: "base_mn_rbt_qual_mb_prod_map_all.view.lkml"

  view: mn_rbt_qual_mb_prod_map_ext {
    extends: [mn_rbt_qual_mb_prod_map_all]

    ######## Derived Columns###################
    dimension_group: included_product_start {
      type: time
      timeframes: [
        raw,
        time,
        date,
        week_of_year,
        month,
        quarter,
        year
      ]
      sql:  CASE WHEN ${excluded_flag} = 'N' THEN ${eff_start_raw} ELSE NULL END;;
    }

    dimension_group: included_product_end {
      type: time
      timeframes: [
        raw,
        time,
        date,
        week_of_year,
        month,
        quarter,
        year
      ]
      sql:  CASE WHEN ${excluded_flag} = 'N' THEN ${eff_end_raw} ELSE NULL END;;
    }

    dimension: included_product_name {
      type: string
      sql: CASE WHEN ${excluded_flag} = 'N' THEN ${mn_rbt_qual_mb_prod_dim.product_name} ELSE NULL END;;
    }

    dimension: included_product_num {
      type: string
      label: "Included Product ID"
      sql: CASE WHEN ${excluded_flag} = 'N' THEN ${mn_rbt_qual_mb_prod_dim.product_num} ELSE NULL END;;
    }

    dimension_group: excluded_product_start {
      type: time
      timeframes: [
        raw,
        time,
        date,
        week_of_year,
        month,
        quarter,
        year
      ]
      sql:  CASE WHEN ${excluded_flag} = 'Y' THEN ${eff_start_raw} ELSE NULL END;;
    }

    dimension_group: excluded_product_end {
      type: time
      timeframes: [
        raw,
        time,
        date,
        week_of_year,
        month,
        quarter,
        year
      ]
      sql:  CASE WHEN ${excluded_flag} = 'Y' THEN ${eff_end_raw} ELSE NULL END;;
    }

    dimension: excluded_product_name {
      type: string
      sql: CASE WHEN ${excluded_flag} = 'Y' THEN ${mn_rbt_qual_mb_prod_dim.product_name} ELSE NULL END;;
    }

    dimension: excluded_product_num {
      type: string
      label: "Excluded Product ID"
      sql: CASE WHEN ${excluded_flag} = 'Y' THEN ${mn_rbt_qual_mb_prod_dim.product_num} ELSE NULL END;;
    }


    dimension: pg_name {
      type: string
      label: "Qualification Product From Price Program"
      sql: ${mn_rbt_qual_mb_pg_dim.pg_name};;
    }

    dimension: excluded_flag {
      hidden: yes
    }

  }
