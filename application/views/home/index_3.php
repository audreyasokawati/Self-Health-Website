<div class="container" style="color: black;">
  <br>
  <div class="textBoxHome">
    <h4>
      Welcome back <b><span style="text-transform:capitalize"> <?= $akun['fullname']; ?> </span> </b>,
    </h4>
    <h4>
      The purpose of this application is to improve your health by monitoring your diet, sports activities that match your body's needs.
      This application can display <b> DASHBOARD </b> to show your health performance
      to monitor and know your productivity.
      Stay healthy!
    </h4>
    <hr>
  </div>

  <table class=" table table-striped table-hover table-bordered">
    <tr class="text-center">
      <th>NO</th>
      <th>Name</th>
      <th>Amount</th>
      <th>Total Calories</th>
    </tr>

    <?php

    $no = 1;
    foreach ($makanan as $hm) :
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