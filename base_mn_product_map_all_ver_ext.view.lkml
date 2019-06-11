include: "base_mn_product_map_all_vers.view.lkml"

view: mn_product_map_all_ver_ext {
  extends: [mn_product_map_all_ver]


  dimension: level1_product_name_num {
    type: string
    group_label: "Product Hierarchy"
    label: "Level 1 Product Name [Number]"
    sql: ${level1_product_name} ||' [' ||NVL(${level1_product_num},'None') ||']';;
  }

  dimension: level0_product_name_num {
    type: string
    hidden: yes
    group_label: "Product Hierarchy"
    label: "Level 0 Product Name [Number]"
    sql: ${level0_product_name} ||' [' ||NVL(${level0_product_num},'None') ||']';;
  }

  dimension: level2_product_name_num {
    type: string
    group_label: "Product Hierarchy"
    label: "Level 2 Product Name [Number]"
    sql: ${level2_product_name} ||' [' ||NVL(${level2_product_num} ,'None')||']';;
  }

  dimension: level3_product_name_num {
    type: string
    group_label: "Product Hierarchy"
    label: "Level 3 Product Name [Number]"
    sql: ${level3_product_name} ||' [' ||NVL(${level3_product_num},'None') ||']';;
  }

  dimension: level4_product_name_num {
    type: string
    group_label: "Product Hierarchy"
    label: "Level 4 Product Name [Number]"
    sql: ${level4_product_name} ||' [' ||NVL(${level4_product_num} ,'None')||']';;
  }

  dimension: level5_product_name_num {
    type: string
    group_label: "Product Hierarchy"
    label: "Level 5 Product Name [Number]"
    sql: ${level5_product_name} ||' [' ||NVL(${level5_product_num},'None') ||']';;
  }

  dimension: level6_product_name_num {
    type: string
    group_label: "Product Hierarchy"
    label: "Level 6 Product Name [Number]"
    sql: ${level6_product_name} ||' [' ||NVL(${level6_product_num},'None') ||']';;
  }

  dimension: level7_product_name_num {
    type: string
    group_label: "Product Hierarchy"
    label: "Level 7Product Name [Number]"
    sql: ${level7_product_name} ||' [' ||NVL(${level7_product_num},'None') ||']';;
  }

  dimension: level8_product_name_num {
    type: string
    group_label: "Product Hierarchy"
    label: "Level 8 Product Name [Number]"
    sql: ${level8_product_name} ||' [' ||NVL(${level8_product_num} ,'None')||']';;
  }

  dimension: level9_product_name_num {
    type: string
    group_label: "Product Hierarchy"
    label: "Level 9 Product Name [Number]"
    sql: ${level9_product_name} ||' [' ||NVL(${level9_product_num},'None') ||']';;
  }

  filter: catalog_level_selection {
    label: "Catalog Level Selection"
    default_value: "1"
    suggestions: ["0","1", "2", "3", "4", "5", "6", "7"]
  }

  dimension: product_name_num {
    type: string
    group_label: "Product Hierarchy"
    label: "Product Name [Number] selected"
    sql: CASE
      WHEN  {% condition catalog_level_selection %} '0' {% endcondition %} THEN ${level0_product_name_num}
      WHEN  {% condition catalog_level_selection %} '1' {% endcondition %} THEN ${level1_product_name_num}
      WHEN  {% condition catalog_level_selection %} '2' {% endcondition %} THEN ${level2_product_name_num}
      WHEN  {% condition catalog_level_selection %} '3' {% endcondition %} THEN ${level3_product_name_num}
      WHEN  {% condition catalog_level_selection %} '4' {% endcondition %} THEN ${level4_product_name_num}
      WHEN  {% condition catalog_level_selection %} '5' {% endcondition %} THEN ${level5_product_name_num}
      WHEN  {% condition catalog_level_selection %} '6' {% endcondition %} THEN ${level6_product_name_num}
      ELSE  ${level7_product_name_num}
    END ;;
  }

  set: short_gtn_set2  {
    fields: [level1_product_num, level1_product_name, level2_product_num, level2_product_name, level3_product_num, level3_product_name, level4_product_num, level4_product_name, level5_product_num, level5_product_name]
  }

  set: short_gtn_set1  {
    fields: [product_name_num,catalog_level_selection, level1_product_name_num, level2_product_name_num, level3_product_name_num, level4_product_name_num, level5_product_name_num, level6_product_name_num, level7_product_name_num]
  }



}
