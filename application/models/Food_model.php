<?php
class Food_model extends CI_Model
{
  public function __construct()
  {
    $this->load->database();
  }

  public function getFood()
  {
    // Mengambil database data makanan
    $query = $this->db->get('tb_data_makanan');

    // melemparkan isinya
    return $query->result_array();
  }
  
  public function getAllHistoryFood(){
    $this->db->select('*');
    $this->db->from('tb_sejarah_makanan');
    $this->db->join('tb_sm_harian', 'tb_sm_harian.id_sm_harian=tb_sejarah_makanan.id_sm_smh', 'inner');
    $this->db->join('tb_data_makanan', 'tb_data_makanan.id_dm=tb_sejarah_makanan.id_sm_makanan', 'inner');

    $query = $this->db->get();
    return $query->result_array();

  }

  public function insert()
  {

    // menyalin ke variabel data
    $data = array(
      'food_name' => $this->input->post('food_name'),
      'calories' => $this->input->post('calories'),
      'taste' => $this->input->post('taste'),
      'cuisene' => $this->input->post('cuisene')
    );

    // melemparkan data nya, di insert
    return $this->db->insert('tb_data_makanan', $data);
  }

  public function getSM($time){
      $this->db->select('*');
      $this->db->from('tb_sm_harian');
      $this->db->where('id_smh_akun', $this->session->userdata('user_id'));
      $this->db->where('tanggal_smh', $time);
      $query = $this->db->get();

      // melemparkan isinya
      return $query->row_array();
  }

  public function getFoodHistori($id = null)
  {

    if($id === null){
      $this->db->select('*');
      $this->db->from('tb_sejarah_makanan');
      $this->db->join('tb_sm_harian', 'tb_sm_harian.id_sm_harian=tb_sejarah_makanan.id_sm_smh', 'inner');
      $this->db->join('tb_data_makanan', 'tb_data_makanan.id_dm=tb_sejarah_makanan.id_sm_makanan', 'inner');
      $this->db->order_by('tanggal_sm', 'DESC');
      $query = $this->db->get();

      // melemparkan isinya
      return $query->result_array();
    }else{     

      $this->db->select('*');
      $this->db->from('tb_sejarah_makanan');
      $this->db->join('tb_sm_harian', 'tb_sm_harian.id_sm_harian=tb_sejarah_makanan.id_sm_smh', 'inner');
      $this->db->join('tb_data_makanan', 'tb_data_makanan.id_dm=tb_sejarah_makanan.id_sm_makanan', 'inner');
      $this->db->where('tb_sm_harian.id_smh_akun', $this->session->userdata('user_id'));
      $this->db->order_by('tanggal_sm', 'DESC');
      $this->db->where('id_sm_smh', $id);
      $query = $this->db->get();

      // melemparkan isinya
      return $query->result_array();
    }
    
  }

  public function getFoodHistoriASC()
  {

    $this->db->select('*');
    $this->db->from('tb_sejarah_makanan');
    $this->db->join('tb_sm_harian', 'tb_sm_harian.id_sm_harian=tb_sejarah_makanan.id_sm_smh', 'inner');
    $this->db->join('tb_data_makanan', 'tb_data_makanan.id_dm=tb_sejarah_makanan.id_sm_makanan', 'inner');
    $this->db->where('tb_sm_harian.id_smh_akun', $this->session->userdata('user_id'));
    $query = $this->db->get();

    // melemparkan isinya
    return $query->result_array();
  }

  public function getFoodHistoriDayASC()
  {

    $this->db->select('*');
    $this->db->from('tb_sm_harian');
    $this->db->where('id_smh_akun', $this->session->userdata('user_id'));
    $query = $this->db->get();

    // melemparkan isinya
    return $query->result_array();
  }

  public function getFoodHistoriDay()
  {

    $this->db->select('*');
    $this->db->from('tb_sm_harian');
    $this->db->order_by('tanggal_smh', 'DESC');
    $this->db->where('id_smh_akun', $this->session->userdata('user_id'));
    $query = $this->db->get();

    // melemparkan isinya
    return $query->result_array();
  }

  public function insert_sm_harian(){

    $query = $this->db->get_where('tb_data_makanan', array('food_name' => $this->input->post('food')));

    $id = $query->row()->id_dm;
    $total_calories = $this->input->post('portion') * $query->row()->calories;

    $curDate = date("Y-m-d");

    // Mengambil database id terakhir
    $this->db->where('id_smh_akun', $this->session->userdata('user_id'));
    $query = $this->db->get('tb_sm_harian');

    $result = $query->last_row('array');

    if($result > 0){
      if($result['tanggal_smh'] == $curDate){
        $this->db->set('total_smh', $result['total_smh'] + $total_calories);
        $this->db->where('id_sm_harian', $result['id_sm_harian']);
        $this->db->update('tb_sm_harian'); // update total_smh tabel tb_sm_harian di id tertentu 
        
        $this->insert_sejarah_makanan($id, $total_calories, $result['id_sm_harian']);
      }else{
        $data = array(
          'id_smh_akun' => $this->session->userdata('user_id'),
          'total_smh' => $total_calories,
          'tanggal_smh' => $curDate
        );

        $this->db->insert('tb_sm_harian', $data);

        $insert_id = $this->db->insert_id();
        $this->insert_sejarah_makanan($id, $total_calories, $insert_id);
      }
 
    }else{
      $data = array(
        'id_smh_akun' => $this->session->userdata('user_id'),
        'total_smh' => $total_calories,
        'tanggal_smh' => $curDate
      );

      $this->db->insert('tb_sm_harian', $data);
      $insert_id = $this->db->insert_id();
      // $this->insert_sejarah_makanan($id, $total_calories, $insert_id);
    }
  }

  public function insert_sejarah_makanan($id, $total_calories, $last_id)
  {

    // disalin ke variabel data
    $data = array(
      'id_sm_makanan' => $id,
      'id_sm_smh' => $last_id,
      'jumlah' => $this->input->post('portion'),
      'kalori_total' => $total_calories
    );

    // insert data ke tabel sejarah makanan
    return $this->db->insert('tb_sejarah_makanan', $data);
  }

  public function getTaste_magnitude()
  {

    $this->db->group_by('taste');
    $this->db->select('taste');
    $this->db->select("count(*) as total");
    $this->db->from('tb_sejarah_makanan');
    $this->db->join('tb_sm_harian', 'tb_sm_harian.id_sm_harian=tb_sejarah_makanan.id_sm_smh', 'inner');
    $this->db->join('tb_data_makanan', 'tb_data_makanan.id_dm=tb_sejarah_makanan.id_sm_makanan', 'inner');
    $this->db->where('tb_sm_harian.id_smh_akun', $this->session->userdata('user_id'));
    $this->db->order_by('total', 'DESC');
    $query = $this->db->get();

    // melemparkan isinya
    return $query->first_row('array');
  }

  public function getCuisene_magnitude()
  {

    $this->db->group_by('cuisene');
    $this->db->select('cuisene');
    $this->db->select("count(*) as total");
    $this->db->from('tb_sejarah_makanan');
    $this->db->join('tb_sm_harian', 'tb_sm_harian.id_sm_harian=tb_sejarah_makanan.id_sm_smh', 'inner');
    $this->db->join('tb_data_makanan', 'tb_data_makanan.id_dm=tb_sejarah_makanan.id_sm_makanan', 'inner');
    $this->db->where('tb_sm_harian.id_smh_akun', $this->session->userdata('user_id'));
    $this->db->order_by('total', 'DESC');
    $query = $this->db->get();

    // melemparkan isinya
    return $query->first_row('array');
  }

  public function getFoodbyFav($fav)
  {
    // Mengambil database data makanan
    $this->db->select('food_name');
    $this->db->select('calories');
    $this->db->select('cuisene');
    $this->db->where('taste', $fav);
    $query = $this->db->get('tb_data_makanan');
    // melemparkan isinya
    return $query->result_array();
  }
}
