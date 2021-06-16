<br>
<br>

<?php echo validation_errors(); ?>
<div class="container">
  <a href="<?= base_url('dashboard') ?>" class="btn mb-5"> <i class="fa fa-arrow-left"></i> <b>Dashboard</b></a>
  <h4 class="ml-2">Information</h4>
  <hr style="color:black;">
  <h4>Diet</h4>
  <p class="ml-2 lead">The average woman needs an intake of <b>2000</b> calories per day, while the average man needs an intake of <b>2500</b> calories per da. To lose weight, ideally you only need to reduce <b>500</b> calories each day. So, women need <b>1500</b> calories and men need <b>2000</b> calories per day to lose weight. With a reduction of <b>500</b> calories per day, you can lose <b>0.5-1</b> kg of your body weight per week.
    <br>
    <a href="https://hellosehat.com/nutrisi/berat-badan-turun/berapa-minimal-kalori-yang-harus-dipenuhi-saat-diet/">(Source: Hello Sehat)</a>
  </p>


  <h4>BMI</h4>

  <p class="ml-2 lead">
    Calculation: Weight divided by height to the power of two.
  </p>

  <div class="row">
    <div class="col-md-6">
      <h5>Female Category</h5>
      <p class="ml-2 lead">
        Underweight: < 18.5 <br>
          Normal: 18.5 - 22.9 <br> Overweight: 23 - 24.9 <br> Obese: > 25
          <br>
          <a href="https://www.sehatq.com/artikel/cara-menghitung-berat-badan-ideal-wanita-sudah-idealkah-anda">(Source: Sehat Q)</a>
      </p>
    </div>
    <div class="col-md-6">
      <h5>Male Category</h5>
      <p class="ml-2 lead">
        Underweight: < 18.5 <br>
          Normal: 18.5 - 22.9 <br> Overweight: 23 - 24.9 <br> Obese: > 25
          <br>
          <a href="https://www.sehatq.com/artikel/berapa-berat-badan-ideal-pria-bisa-dihitung-dengan-cara-ini">(Source: Sehat Q)</a>
      </p>
    </div>
  </div>

  <h4>Average of Indonesian BMI</h4>
  <p class="ml-2 lead">
    The average BMI of Indonesian men is 21 and women 22.7
    <a href="https://www.merdeka.com/sehat/negara-dengan-penduduk-tergemuk-ternyata-bukan-amerika.html">(Source: Merdeka)</a>
  </p>

  <h4>Data</h4>
  <p class="ml-2 lead">
    Food dataset in this website is from
    <a href="https://www.kaggle.com/data/192954">Kaggle</a>
  </p>
  <p class="ml-2 lead">
    Sport dataset in this website is from
    <a href="https://www.kaggle.com/aadhavvignesh/calories-burned-during-exercise-and-activities">Kaggle</a>
  </p>

</div>