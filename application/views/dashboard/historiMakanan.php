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

    <table class=" table table-striped table-hover table-bordered">
      <tr class="text-center">
        <th>NO</th>
        <th>Name</th>
        <th>Amount</th>
        <th>Total Calories</th>
      </tr>

      <?php

      $no = 1;
      foreach ($histori_m as $hm) :
      ?>
        <tr class="text-center">
          <td><?php echo $no++ ?></td>
          <td><?php echo $hm['food_name'] ?></td>
          <td><?php echo $hm['jumlah'] ?></td>
          <td><?php echo $hm['kalori_total'] ?></td>

        </tr>
      <?php endforeach; ?>
    </table>
  </div>
</div>