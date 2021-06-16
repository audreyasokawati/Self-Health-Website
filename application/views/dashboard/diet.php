<br>
<br>

<?php echo validation_errors(); ?>
<div class="container">
  <a href="<?= base_url('dashboard') ?>" class="btn mb-5"> <i class="fa fa-arrow-left"></i> <b>Dashboard</b></a>
  <h4 class="ml-2">Diet Programme</h4>
  <p class="ml-2 lead">The average woman needs an intake of <b>2000</b> calories per day, while the average man needs an intake of <b>2500</b> calories per da. To lose weight, ideally you only need to reduce <b>500</b> calories each day. So, women need <b>1500</b> calories and men need <b>2000</b> calories per day to lose weight. With a reduction of <b>500</b> calories per day, you can lose <b>0.5-1</b> kg of your body weight per week.
      <br>
      <a href="https://hellosehat.com/nutrisi/berat-badan-turun/berapa-minimal-kalori-yang-harus-dipenuhi-saat-diet/">(Source: Hello Sehat)</a>
  </p>
  <br>
  <div class="row">
    <div class="col-xl-4 col-lg-7">
      <div class="card shadow">
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
          <h6 class="m-0 font-weight-bold text-primary">Set Diet</h6>
        </div>
        <div class="card-body">
          <?php if ($akun['diet'] == "no") : ?>
            <form action="<?= base_url('users/insertDiet/'); ?>" method="POST" enctype="multipart/form-data">
              <div class="form-group">
                <h5>Lose weight (kg)</h5>
                <input type="number" name="target" class="form-control" placeholder="" value="">
                <button class="btn btn-primary mt-3" type="submit">Set</button>
            </form>
          <?php else : ?>
            <p class="lead"> Program diet anda <?= $kesehatan['persentase_pencapaian']; ?>% untuk mencapai target turun <?= $kesehatan['target']; ?> kg. </p>
            <p class="lead"> Deadline <?= $kesehatan['deadline']; ?></p>
            <div class="row no-gutters align-items-center">
              <div class="col-auto">
                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?= $kesehatan['persentase_pencapaian']; ?></div>
              </div>
              <div class="col">
                <div class="progress progress-sm mr-2">
                  <div class="progress-bar bg-info" role="progressbar" style="width: <?= $kesehatan['persentase_pencapaian']; ?>" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
            </div>
            <form action="<?= base_url('users/unsetDiet/'); ?>" method="POST" enctype="multipart/form-data">
              <div class="form-group">
                <button class="btn btn-primary mt-3" type="submit">Unset</button>
            </form>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div>
</div>