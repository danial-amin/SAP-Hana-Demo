view: sales_items_list {
  derived_table: {
    sql: SELECT * FROM "_SYS_BIC"."sap.sbodemoau/SALES_ITEMLINES"
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: doctype {
    type: number
    sql: ${TABLE}."DOCTYPE" ;;
  }

  dimension: docgroup {
    type: string
    sql: ${TABLE}."DOCGROUP" ;;
  }

  dimension: docentry {
    type: number
    sql: ${TABLE}."DOCENTRY" ;;
  }

  dimension: linenum {
    type: number
    sql: ${TABLE}."LINENUM" ;;
  }

  dimension: cardcode {
    type: string
    sql: ${TABLE}."CARDCODE" ;;
  }

  dimension: cardname {
    type: string
    sql: ${TABLE}."CARDNAME" ;;
  }

  dimension: bpgroupcode {
    type: number
    sql: ${TABLE}."BPGROUPCODE" ;;
  }

  dimension: bpgroupname {
    type: string
    sql: ${TABLE}."BPGROUPNAME" ;;
  }

  dimension: slpcode {
    type: number
    sql: ${TABLE}."SLPCODE" ;;
  }

  dimension: slpname {
    type: string
    sql: ${TABLE}."SLPNAME" ;;
  }

  dimension: docdate {
    type: date
    sql: ${TABLE}."DOCDATE" ;;
  }

  dimension: docduedate {
    type: date
    sql: ${TABLE}."DOCDUEDATE" ;;
  }

  dimension: taxdate {
    type: date
    sql: ${TABLE}."TAXDATE" ;;
  }

  dimension: itemcode {
    type: string
    sql: ${TABLE}."ITEMCODE" ;;
  }

  dimension: itemname {
    type: string
    sql: ${TABLE}."ITEMNAME" ;;
  }

  dimension: usebaseun {
    type: string
    sql: ${TABLE}."USEBASEUN" ;;
  }

  dimension: taxonly {
    type: string
    sql: ${TABLE}."TAXONLY" ;;
  }

  dimension: doctotal {
    type: number
    sql: ${TABLE}."DOCTOTAL" ;;
  }

  dimension: dpmamnt {
    type: number
    sql: ${TABLE}."DPMAMNT" ;;
  }

  dimension: grossprofit {
    type: number
    sql: ${TABLE}."GROSSPROFIT" ;;
  }

  dimension: rounddif {
    type: number
    sql: ${TABLE}."ROUNDDIF" ;;
  }

  dimension: vatsum {
    type: number
    sql: ${TABLE}."VATSUM" ;;
  }

  dimension: wtsum {
    type: number
    sql: ${TABLE}."WTSUM" ;;
  }

  dimension: totalexpns {
    type: number
    sql: ${TABLE}."TOTALEXPNS" ;;
  }

  dimension: discsum {
    type: number
    sql: ${TABLE}."DISCSUM" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."QUANTITY" ;;
  }

  dimension: numpermsr {
    type: number
    sql: ${TABLE}."NUMPERMSR" ;;
  }

  dimension: linetotal {
    type: number
    sql: ${TABLE}."LINETOTAL" ;;
  }

  dimension: grossbuypr {
    type: number
    sql: ${TABLE}."GROSSBUYPR" ;;
  }

  dimension: factor {
    type: number
    sql: ${TABLE}."FACTOR" ;;
  }

  set: detail {
    fields: [
      doctype,
      docgroup,
      docentry,
      linenum,
      cardcode,
      cardname,
      bpgroupcode,
      bpgroupname,
      slpcode,
      slpname,
      docdate,
      docduedate,
      taxdate,
      itemcode,
      itemname,
      usebaseun,
      taxonly,
      doctotal,
      dpmamnt,
      grossprofit,
      rounddif,
      vatsum,
      wtsum,
      totalexpns,
      discsum,
      quantity,
      numpermsr,
      linetotal,
      grossbuypr,
      factor
    ]
  }
}
