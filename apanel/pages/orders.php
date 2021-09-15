  <?php if ($_REQUEST['mode'] == 'invoice') { ?>
      <?php
        $id = $_REQUEST['code'];
        $invoice_qry =  "SELECT * FROM tbl_orders WHERE order_id='$id'";
        $invoice_exe = $conn->query($invoice_qry) or die(mysqli_error($conn));
        $invoice_row = $invoice_exe->fetch_assoc();
        $invoice = unserialize(stripslashes($invoice_row['order_data']));

        ?>
      <style>
          #p_20 {
              padding: 20px;
          }

          #p_card {
              padding: 10px 30px 10px 30px;
          }

          #print_span {
              padding: 10px;
          }
      </style>
      <link rel="stylesheet" href="<?php echo $apath ?>assets/css/invoice_style.css" media="all" />

      <div class="mdk-header-layout__content">
          <div id="p_20" class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
              <div class="mdk-drawer-layout__content page">
                  <div id="p_card" class="container-fluid page__container card">
                      <span id="print_span"><button onclick="window.print()"><i class="fa fa-print"></i></button></span>
                      <header class="clearfix">
                          <div id="logo">
                              <img src="<?= $path; ?>uploads/logo/<?= $site_logo; ?>" alt="Website Logo">
                          </div>
                          <h1>INVOICE</h1>
                          <div id="company" class="clearfix">
                              <div><?= $site_name; ?></div>
                              <div><?= $site_phone; ?></div>
                              <div><a href="mailto:<?= $site_email ?>"><?= $site_email ?></a></div>
                          </div>
                          <div id="project">
                              <div><span>PAKAGE</span> <?= stripslashes($invoice['pkg_title']); ?></div>
                              <div><span>CLIENT</span> <?= stripslashes($invoice['fullname']); ?></div>
                              <div><span>EMAIL</span> <a href="mailto:<?= stripslashes($invoice['email']); ?>"><?= stripslashes($invoice['email']); ?></a></div>
                              <div><span>CLIENT</span> <?= stripslashes($invoice['phone_no']); ?></div>
                              <div><span>DATE</span> <?= $invoice_row['order_date'] ?></div>
                          </div>
                      </header>
                      <main>
                          <table>
                              <thead>
                                  <tr>
                                      <th class="desc">ORDER DATE</th>
                                      <th class="service">PAKAGE</th>
                                      <th class="code">ORDER CODE</th>
                                      <th class="price">PRICE</th>
                                      <th class="price">TOTAL</th>
                                  </tr>
                              </thead>
                              <tbody>
                                  <tr>
                                      <td class="desc"><?= stripslashes($invoice_row['order_date']); ?></td>
                                      <td class="service"><?= stripslashes($invoice['pkg_title']); ?></td>
                                      <td class="code"><?= stripslashes($invoice_row['order_code']); ?></td>
                                      <td class="price">$<?= stripslashes($invoice['pkg_price']); ?></td>
                                      <td class="price">$<?= stripslashes($invoice['pkg_price']); ?></td>
                                  </tr>

                                  <tr>
                                      <td colspan="4">SUBTOTAL</td>
                                      <td class="total">$<?= stripslashes($invoice['pkg_price']); ?></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4">TOTAL</td>
                                      <td class="total">$<?= stripslashes($invoice['pkg_price']); ?></td>
                                  </tr>

                                  <!-- <tr>
                          <td colspan="4">TAX 25%</td>
                          <td class="total">$1,300.00</td>
                      </tr> -->
                                  <!-- <tr>
                          <td colspan="4" class="grand total">GRAND TOTAL</td>
                          <td class="grand total">$6,500.00</td>
                      </tr> -->
                              </tbody>
                          </table>
                          <div id="notices">
                              <div>NOTICE:</div>
                              <div class="notice">A finance charge of 1.5% will be made on unpaid balances after 30 days.</div>
                          </div>
                      </main>
                      <footer>
                          Invoice was created on a computer and is valid without the signature and seal.
                      </footer>
                  </div>
              </div>
              <?php include_once("pages/shared/sidebar.php"); ?>

          </div>
      </div>

  <?php } else { ?>
      <?php
        $this_prefix = 'order_';
        $this_table = 'tbl_orders';
        if (isset($_POST[$this_prefix . 'delete']))
            deleteRows($this_table, $this_prefix . "id", $_POST[$this_prefix . 'delete']);

        if (isset($_POST[$this_prefix . 'status']))
            updateRows($this_table, $this_prefix . "status", $this_prefix . "id", $_POST[$this_prefix . 'status']);

        if (isset($_POST)) {
            global $conn;

            $query_rs_pages = "SELECT * FROM $this_table WHERE 1 ORDER BY {$this_prefix}order ASC";
            $rs_pages = $conn->query($query_rs_pages) or die('mysql error');
            while ($row_rs_pages = $rs_pages->fetch_array()) {
                if (isset($_REQUEST["orderid" . $row_rs_pages[$this_prefix . "id"] . ""])) {
                    $s35 = "update $this_table set {$this_prefix}order = '" . $_REQUEST["orderid" . $row_rs_pages[$this_prefix . "id"] . ""] . "' where {$this_prefix}id = '" . $row_rs_pages[$this_prefix . "id"] . "' ";
                    $q35 = $conn->query($s35) or die($s35);
                    $_SESSION['successMsg'] = 'Changes has been saved successfully !';
                }
            }
        }

        $pager = '&pager=' . $_REQUEST['pager'];
        ?>

      <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" /> -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

      <div class="mdk-header-layout__content">
          <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">

              <div class="mdk-drawer-layout__content page">
                  <div class="container-fluid page__container">
                      <div class="page__heading d-flex align-items-center">
                          <div class="flex">
                              <h4 class="m-0"><i class="fa fa-image"></i> Manage Orders</h4>
                          </div>
                          <a href="javascript:document.getElementById('updateForm').submit();" class="btn btn-primary ml-3" onclick="return confirm('Are you sure you want to update records?');">Update <i class="fa fa-arrow-up"></i></a>
                          <!-- <a href="<?= $apath; ?>orders?mode=add" class="btn btn-success ml-3">Create New <i class="fa fa-plus"></i></a> -->
                      </div>
                      <div class="card">
                          <form name="updateForm" id="updateForm" action="" method="post">
                              <div class="table-responsive" data-toggle="lists" data-lists-values='["js-lists-values-employee-name"]'>
                                  <table class="table mb-0 thead-border-top-0 table-striped">
                                      <thead>
                                          <tr>
                                              <th style="width: 3%;" class="text-center">#ID</th>
                                              <th style="width: 15%;">Date</th>
                                              <th>Email</th>
                                              <th>Pakage</th>
                                              <th>Price</th>
                                              <th>Order Code</th>
                                              <th style="width: 10%;" class="text-center">Sort</th>
                                              <th style="width: 10%;">Status</th>
                                              <th width="8%" class="text-center">Delete</th>
                                              <th style="width: 8%;" class="text-center">Invoice</th>
                                              <!-- <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'order_status\']').attr('checked', this.checked);" title="Select All"> Status</th>
                        <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'order_delete\']').attr('checked', this.checked);" title="Select All"> Delete</th> -->
                                          </tr>
                                      </thead>
                                      <tbody class="list" id="listingTable">
                                          <?php
                                            $sr = 1;
                                            $paging =  "SELECT * FROM tbl_orders ORDER BY order_order ASC LIMIT 0, 10";
                                            $exe = $conn->query($paging) or die(mysqli_error($conn));
                                            while ($row = $exe->fetch_array()) {
                                                $order_id = $row['order_id'];
                                                $data = unserialize(stripslashes($row['order_data']));

                                            ?>
                                              <tr>
                                                  <td>
                                                      <div class="badge badge-soft-dark">#<?= $sr++ ?></div>
                                                  </td>
                                                  <td>
                                                      <div class="badge badge-soft-dark"><?= $row['order_date'] ?></div>
                                                  </td>
                                                  <td><?= stripslashes($data['email']); ?></td>
                                                  <td><?= stripslashes($data['pkg_title']); ?></td>
                                                  <td>$<?= stripslashes($data['pkg_price']); ?></td>
                                                  <td><?= stripslashes($row['order_code']); ?></td>
                                                  <td style="width:80px" class="text-center"><input id="orderid<?= $order_id ?>" type="text" name="orderid<?= $order_id ?>" value="<?= $row['order_order'] ?>" class="form-control" size="3" />
                                                  </td>
                                                  <td>
                                                      <div class="custom-control custom-checkbox">
                                                          <input type="checkbox" name="order_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $order_id ?>" value="<?= $order_id ?>">
                                                          <label class="custom-control-label" for="customCheck2_<?= $order_id ?>"><?= getOrderStatus($row['order_status']); ?></label>
                                                      </div>
                                                  </td>
                                                  <!-- <td>
                                                  <div class="custom-control custom-checkbox">
                                                      <input type="checkbox" name="order_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $order_id ?>" value="<?= $order_id ?>">
                                                      <label class="custom-control-label" for="customCheck2_<?= $order_id ?>"><?= getStatus($row['order_status']); ?></label>
                                                  </div>
                                              </td> -->
                                                  <td class="text-center">
                                                      <div class="custom-control custom-checkbox">
                                                          <input type="checkbox" name="order_delete[]" class="custom-control-input js-check-selected-row" id="customCheckDelete_<?= $order_id ?>" value="<?= $order_id ?>">
                                                          <label class="custom-control-label" for="customCheckDelete_<?= $order_id ?>"></label>
                                                      </div>
                                                  </td>
                                                  <td class="text-center">
                                                      <a href="<?= $apath; ?>orders?mode=invoice&code=<?= $row['order_id'] ?><?= $pager; ?>" class="btn btn-sm btn-primary"><i class="fa fa-print"></i></a>
                                                      <!-- <a href="<?= $apath; ?>orders?mode=delete&code=<?= $row['order_id'] ?><?= $pager; ?>" class="btn btn-sm btn-danger " onclick="return confirm('Are you sure you want to delete this page?');"><i class="fa fa-trash"></i> Delete</a> -->
                                                  </td>
                                              </tr>
                                          <?
                                            }
                                            ?>
                                          <tr>
                                              <td colspan="12">
                                                  <div class="text-center"><?= $pagination; ?></div>
                                              </td>
                                          </tr>

                                      </tbody>
                                  </table>
                              </div>
                          </form>
                      </div>

                  </div>
              </div>
              <?php include_once("pages/shared/sidebar.php"); ?>
          </div>
      </div>
      <!-- <script>
        $(document).ready(function() {
            
            $('.close').click(function() {
                $('.model').hide();
            });
            $(function() {
                $('[data-toggle="popover"]').popover()
            })
        });
    </script> -->
  <?php } ?>