view: mn_discount_percent_band_drv {
    label: "Discount Persent Spread"
    derived_table: {
      sql:
      SELECT MAX(LEVEL/10) AS DISCOUNT_PERCENT
      FROM DUAL
       CONNECT BY
      {% condition discount_percent_flt %} LEVEL/10 {% endcondition %} AND LEVEL <500
       ;;
    }

# ***** Filters Section
    filter: discount_percent_flt {
      type: number
      label: "Discount Percent filter"
    }

    dimension: discount_percent {
      type: number
      hidden: yes
      label: "Discount Percent"
      sql: ${TABLE}.DISCOUNT_PERCENT;;
    }

# ***** Measures
    measure: max_discount_percent{
      type: max
      label: "Discount Percent"
      value_format_name: decimal_2
      sql:  ${discount_percent}  ;;
    }

  }
