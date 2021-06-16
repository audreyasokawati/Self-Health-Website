<div class="container">
  <br>
  <a href="<?= base_url('dashboard') ?>" class="btn mb-5"> <i class="fa fa-arrow-left"></i> <b>Dashboard</b></a>

  <h4 class="ml-3">History</h4>
  <br>

  <div class="container-fluid">

    <a class="btn btn-primary" href="<?= base_url('dashboard/historiDay/makanan') ?>">Food</a>
    <a class="btn btn-danger" href="<?= base_url('dashboard/historiDay/olahraga') ?>">Sport</a>
    <br>
    <br>

    <?php if ($pilihan == "makanan") : ?>
      <div class="table-wrapper-scroll-y my-custom-scrollbar">
        <table class=" table table-striped table-hover table-bordered">
          <tr class="text-center">
            <th>NO</th>
            <th>Time</th>
            <th>Total Calories</th>
            <th>Action</th>
          </tr>

          <?php

          $no = 1;
          foreach ($histori_mh as $hm) :
          ?>
            <?php $date = $hm['tanggal_smh'];
            $pieces = explode(" ", $date);
            ?>
            <tr class="text-center">
              <td><?php echo $no++ ?></td>
              <td><?php echo $pieces[0]; ?></td>
              <td><?php echo $hm['total_smh'] ?></td>
              <td>
                <a class="btn btn-warning btn-sm" href="<?= base_url('dashboard/historiMakanan/') . $hm['id_sm_harian']; ?>">Detail</a>
              </td>

            </tr>
          <?php endforeach; ?>
        </table>
      </div>
    <?php elseif ($pilihan == "olahraga") : ?>
      <table class="table table-striped table-hover table-bordered">
        <tr class="text-center">
          <th>NO</th>
          <th>Time</th>
          <th>Total Calories</th>
          <th>Action</th>
        </tr>

        <?php

        $no = 1;
        foreach ($histori_oh as $ho) :
        ?>
          <?php $date = $ho['tanggal_soh'];
          $pieces = explode(" ", $date);
          ?>

          <tr class="text-center">
            <td><?php echo $no++ ?></td>
            <td><?php echo $pieces[0]; ?></td>
            <td><?php echo $ho['total_soh'] ?></td>
            <td>
              <a class="btn btn-warning btn-sm" href="<?= base_url('dashboard/historiOlahraga/') . $ho['id_so_harian']; ?>">Detail</a>
            </td>
          </tr>
        <?php endforeach; ?>
      </table>
    <?php endif; ?>
  </div>
</div>