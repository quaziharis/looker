view: employee_hierarchy {
  derived_table: {
    sql: select 'haris@vcreatek.com' as EMAIL, 'Tony Bacos' as TOP_MANAGER
         union select 'harish.g@vcreatek.com', 'Sena Kwawu'
         union select 'kanika.a@vcreatek.com', 'Jason Marshall'
         union select 'namita.c@vcreatek.com', 'Raj Midha'
         union select 'ninad.t@vcreatek.com', 'Brian Turcotte'
         union select  'sufiyan@vcreatek.com', 'Brett Worthington'
         union select  'quaziharis@gmail.com', 'Namita Chimulkar';;
  }

  dimension: email {
   type: string
   sql: ${TABLE}."EMAIL" ;;
  }

  dimension: top_manager {
   type: string
   sql: ${TABLE}."TOP_MANAGER" ;;
  }

  dimension: department {
    type: string
    sql: case when ${top_manager} = 'Tony Bacos' then 'Engineering'
              when ${top_manager} = 'Sena Kwawu' then 'Operations'
              when ${top_manager} = 'Jason Marshall' then 'Marketing'
              when ${top_manager} = 'Raj Midha' then 'Marketing'
              when ${top_manager} = 'Brian Turcotte' then 'Finance'
              when ${top_manager} = 'Brett Worthington' then 'Real Estate'
        end      ;;
  }

  dimension: group_id {
    type: number
    sql: case when ${department} = 'Engineering' then 11
              when ${department} = 'Operations' then 12
              when ${department} = 'Marketing'  then 5
              when ${department} = 'Marketing' then 5
              when ${department} = 'Finance' then 6
              when ${department} = 'Real Estate' then 13
        end      ;;
  }
}
