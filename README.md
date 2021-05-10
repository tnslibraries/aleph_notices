# New School Patron Communications from Aleph

The following aleph notices are used to email New School patrons daily. 

## kinds of notices

There are three different types of materials

* EZ-Borrow
* Inter-Library Loan (ILL)
* Library materials

## levels of notices

* courtesy notice = -7 days before due date
* due date = day of due date
* overdue1 = +07 days after due date
* overdue2 = +30 days after due date (suspended)
* overdue3 = +60 days after due date (suspended)
* billed as lost = +90 days after due date (suspended)

## order of notices

As of 5/6, the only three services to be turned on are courtesy, due date and overdue1.

## schedule of notices

Courtesy notices will go out in the following way M-F:

* 06:00 ILL, TNSEZB, and Lib recall notices 
* 06:30 ILL, TNSEZB, and Lib billed as lost notices (suspended)
* 06:45 ILL, TNSEZB, and Lib severely overdue notices (suspended)
* 07:00 ILL, TNSEZB, and Lib overdue notices
* 07:30 ILL, TNSEZB, and Lib due notices 
* 08:00 ILL, TNSEZB, and Lib courtesy notices
 
## criteria of notices

EZB:
* sublibraries: TNSFO, TNSOS, TNSGI, TNSSC
* item_status: 36
* patron_status: 30-43
* include_only_items_currently_on_loan:
* include_all_overdue_items: N for courtesy notices or due notices, Y for overdue 1,2,3 and billed as lost
* item_processing_statuses: EZ

ILL:
* sublibraries: TNSFO, TNSOS, TNSGI, TNSSC
* item_status: 30, 31
* patron_status: 30-43
* include_only_items_currently_on_loan:
* include_all_overdue_items: N for courtesy notices or due notices, Y for overdue 1,2,3 and billed as lost
* item_processing_statuses: II

LIB:
* sublibraries: All Sublibraries (including NYU consortium sublibraries)
* item_status: everything except 30, 31 and 36
* patron_status: 30-43
* include_only_items_currently_on_loan: Y
* include_all_overdue_items: N for courtesy notices or due notices, Y for overdue 1,2,3 and billed as lost
* item_processing_statuses: not in process (except for billed as lost, which would be BL)
