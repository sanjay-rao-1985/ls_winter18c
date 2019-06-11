include: "base_mn_cot_dim.view.lkml"

view: mn_cot_dim_ext {
  extends: [mn_cot_dim]

  #**************************Master Data Customers Class of Trade Aliasing
  dimension: md_description {
    type: string
    label: "Class of Trade"
    sql: ${description} ;;
  }

  #*************Membership Data Customer Aliasing
  dimension: ms_description {
    type: string
    label: "Class of Trade"
    sql: ${description} ;;
  }

  #*************Workbook explore NPP COT
  dimension: wb_npp_cot {
    type: string
    label: "COT"
    sql: ${description} ;;
  }

  #************************Master Data Customers COT set
  set: md_cot_set {
    fields: [md_description]
  }

  #*************Membership Field Set
  set: membership_set {
    fields: [ms_description]
  }

  #*************Members Field Set
  set: members_set {
    fields: [ms_description]
  }

}
