include: "base_mn_product_eff_attr_fact.view.lkml"

view: mn_product_eff_attr_fact_ext {
  extends: [mn_product_eff_attr_fact]

  dimension: attr_name {
    group_label: "Product EDA"
    label: "EDA Name"
  }

  dimension: attr_value {
    group_label: "Product EDA"
    label: "EDA Value"
  }

  dimension: effective_end_date {
    group_label: "Product EDA"
    label: "EDA End Date"
    type: date
    sql: ${TABLE}.EFF_END_DATE ;;
  }

  dimension: effective_start_date {
    group_label: "Product EDA"
    label: "EDA Start Date"
    type: date
    sql: ${TABLE}.EFF_START_DATE ;;
  }

  dimension: line_ext_drug_ind {
    type: string
    label: "Line Extension Drug Indicator"
    sql: ${attr_value} ;;

  }

  set: Product_EDA_Attributes {
        fields: [attr_name,attr_value,effective_end_date,effective_start_date]
      }

  set: prod_line_ext_drug_ind {
    fields: [line_ext_drug_ind]
  }
}
