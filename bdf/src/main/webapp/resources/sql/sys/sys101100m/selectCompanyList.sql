select sc.company_id
      ,sc.company_code
      ,sc.company_name_kr
      ,sc.company_name_en
      ,sc.begin_date
      ,sc.end_date
      ,sc.user_yn
      ,sc.address_line1
      ,sc.address_line2
      ,sc.zip_code
      ,sc.email_address
      ,sc.telephone_number
      ,sc.description
      ,sc.create_by
      ,sc.create_date
      ,sc.update_by
      ,sc.update_date
  from sys_company sc
 where 1=1
 order by sc.company_code
