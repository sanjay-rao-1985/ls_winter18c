view: mn_labels_view {

  sql_table_name: DUAL ;;

  dimension: current_year {
    type: number
    hidden: yes
    sql: TO_CHAR(SYSDATE,'YYYY') ;;
  }

  dimension: rolling_current_year {
    type: number
    hidden: yes
    sql: ${current_year}||' Trailing 12 Months' ;;
  }

  dimension: rolling_prior_year {
    type: number
    hidden: yes
    sql: (${current_year}-1)||' Trailing 12 Months' ;;
  }

  dimension: prior_year1 {
    type: number
    hidden: yes
    sql: (${current_year} - 1)||' Calendar 12 Months' ;;
  }

  dimension: prior_year2 {
    type: number
    hidden: yes
    sql: (${current_year} - 2)||' Calendar 12 Months' ;;
  }

  dimension: prior_year3 {
    type: number
    hidden: yes
    sql: (${current_year} - 3)||' Calendar 12 Months' ;;
  }

  measure: year_table_name {
    type: string
    label: "Chart Color Legend:"
    sql: 'Year' ;;
    html:<table style="width:100%"><tr>
        <td style="color: white; text-align: center; background-color: green">{{mn_labels_view.prior_year3}}</td>
        <td style="color: white; text-align: center; background-color: darkblue">{{mn_labels_view.prior_year2}}</td>
        <td style="color: white; text-align: center; background-color: blue">{{mn_labels_view.prior_year1}}</td>
        <td style="color: white; text-align: center; background-color: orange">{{mn_labels_view.rolling_prior_year}}</td>
        <td style="color: white; text-align: center; background-color: red">{{mn_labels_view.rolling_current_year}}</td>
        </tr>
      </table>;;
  }
}
