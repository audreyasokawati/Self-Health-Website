<?php
class Sport_model extends CI_Model
{
  public function __construct()
  {
    $this->load->database();
  }

  public function getSport()
  {
    // Mengambil database data olahraga
    $query = $this->db->get('tb_data_olahraga');

    // melemparkan isinya
    return $query->result_array();
  }

  public function getAllHistorySport()
  {
    $this->db->select('*');
    $this->db->from('tb_sejarah_olahraga');
    $this->db->join('tb_so_harian', 'tb_so_harian.id_so_harian=tb_sejarah_olahraga.id_so_soh', 'inner');
    $this->db->join('tb_data_olahraga', 'tb_data_olahraga.id_dm=tb_sejarah_olahraga.id_so_olahraga', 'inner');

    $query = $this->db->get();
    return $query->result_array();
  }

  public function insert()
  {

    // menyalin ke variabel data
    $data = array(
      'sport' => $this->input->post('sport'),
      'calories' => 1,
      'intensitas' => $this->input->post('intensitas'),
      'tools' => $this->input->post('tools'),
      'sixty' => $this->input->post('calories1'),
      'seventy' => $this->input->post('calories2'),
      'eighty' => $this->input->post('calories3'),
      'ninety' => $this->input->post('calories4')
    );

    // melemparkan data nya, di insert
    return $this->db->insert('tb_data_olahraga', $data);
  }

  public function getSO($time)
  {
    $this->db->select('*');
    $this->db->from('tb_so_harian');
    $this->db->where('id_soh_akun', $this->session->userdata('user_id'));
    $this->db->where('tanggal_soh', $time);
    $query = $this->db->get();

    // melemparkan isinya
    return $query->row_array();
  }

  public function getSportHistori($id = null)
  {
    if($id === null){
      $this->db->select('*');
      $this->db->from('tb_sejarah_olahraga');
      $this->db->join('tb_so_harian', 'tb_so_harian.id_so_harian=tb_sejarah_olahraga.id_so_soh', 'inner');
      $this->db->join('tb_data_olahraga', 'tb_data_olahraga.id_do=tb_sejarah_olahraga.id_so_olahraga', 'inner');
      $this->db->where('tb_so_harian.id_soh_akun', $this->session->userdata('user_id'));
      $query = $this->db->get();
      
      // melemparkan isinya
      return $query->result_array();
    }else{
      $this->db->select('*');
      $this->db->from('tb_sejarah_olahraga');
      $this->db->join('tb_data_olahraga', 'tb_data_olahraga.id_do = tb_sejarah_olahraga.id_so_olahraga');
      $this->db->order_by('tanggal_so', 'DESC');
      $this->db->where('id_so_soh', $id);
      $query = $this->db->get();

      // melemparkan isinya
      return $query->result_array();
    }
  }
  public function getSportHistoriASC()
  {

    $this->db->select('*');
    $this->db->from('tb_sejarah_olahraga');
    $this->db->join('tb_so_harian', 'tb_so_harian.id_so_harian=tb_sejarah_olahraga.id_so_soh', 'inner');
    $this->db->join('tb_data_olahraga', 'tb_data_olahraga.id_do=tb_sejarah_olahraga.id_so_olahraga', 'inner');
    $this->db->where('tb_so_harian.id_soh_akun', $this->session->userdata('user_id'));
    $query = $this->db->get();

    // melemparkan isinya
    return $query->result_array();
  }

  public function getSportHistoriDayASC()
  {

    $this->db->select('*');
    $this->db->from('tb_so_harian');
    $this->db->where('id_soh_akun', $this->session->userdata('user_id'));
    $query = $this->db->get();

    // melemparkan isinya
    return $query->result_array();
  }

  public function getSportHistoriDay()
  {

    $this->db->select('*');
    $this->db->from('tb_so_harian');
    $this->db->order_by('tanggal_soh', 'DESC');
    $this->db->where('id_soh_akun', $this->session->userdata('user_id'));
    $query = $this->db->get();

    // melemparkan isinya
    return $query->result_array();
  }

  public function insert_so_harian()  {

    $data['akun'] = $this->user_model->get_akun($this->session->userdata('user_id'));

    // Mengambil database data olahraga sesuai inputan nama olahraga
    $query = $this->db->get_where('tb_data_olahraga', array('sport' => $this->input->post('sport')));

    $id = $query->row()->id_do;

    //  cek berat badan pengisi
    $weight = $data['akun']['berat_badan'];

    if ($weight <= 59) {
      $calories_hour = $query->row()->sixty;
    } else if ($weight > 59 && $weight <= 70) {
      $calories_hour = $query->row()->seventy;
    } else if ($weight > 70 && $weight <= 82) {
      $calories_hour = $query->row()->eighty;
    } else {
      $calories_hour = $query->row()->ninety;
    }

    // konversi durasi dari menit ke jam
    $dur_hour = $this->input->post('duration') / 60;

    $total_calories = $dur_hour * $calories_hour;

    $curDate = date("Y-m-d");

    // Mengambil database id terakhir
    $this->db->where('id_soh_akun', $this->session->userdata('user_id'));
    $query = $this->db->get('tb_so_harian');

    $result = $query->last_row('array');

    if ($result > 0) {
      if ($result['tanggal_soh'] == $curDate) {
        $this->db->set('total_soh', $result['total_soh'] + $total_calories);
        $this->db->where('id_so_harian', $result['id_so_harian']);
        $this->db->update('tb_so_harian'); // update total_soh tabel tb_so_harian di id tertentu 

        $this->insert_sejarah_olahraga($id, $total_calories, $result['id_so_harian']);
      } else {
        $data = array(
          'id_soh_akun' => $this->session->userdata('user_id'),
          'total_soh' => $total_calories,
          'tanggal_soh' => $curDate
        );

        $this->db->insert('tb_so_harian', $data);
        $insert_id = $this->db->insert_id();
        $this->insert_sejarah_olahraga($id, $total_calories, $insert_id);
      }
    } else {
      $data = array(
        'id_soh_akun' => $this->session->userdata('user_id'),
        'total_soh' => $total_calories,
        'tanggal_soh' => $curDate
      );

      $this->db->insert('tb_so_harian', $data);
      $insert_id = $this->db->insert_id();
      $this->insert_sejarah_olahraga($id, $total_calories, $insert_id);

    }
  }
  public function insert_sejarah_olahraga($id, $total_calories, $last_id)
  {

    // disalin ke variabel data
    $data = array(
      'id_so_olahraga' => $id,
      'id_so_soh' => $last_id,
      'durasi' => $this->input->post('duration'),
      'pembakaran_kalori' => $total_calories
    );

    // insert data ke tabel sejarah olahraga
    return $this->db->insert('tb_sejarah_olahraga', $data);
  }

  public function getInten_magnitude()
  {

    $this->db->group_by('intensitas');
    $this->db->select('intensitas');
    $this->db->select("count(*) as total");
    $this->db->from('tb_sejarah_olahraga');
    $this->db->join('tb_so_harian', 'tb_so_harian.id_so_harian=tb_sejarah_olahraga.id_so_soh', 'inner');
    $this->db->join('tb_data_olahraga', 'tb_data_olahraga.id_do=tb_sejarah_olahraga.id_so_olahraga', 'inner');
    $this->db->where('tb_so_harian.id_soh_akun', $this->session->userdata('user_id'));
    $this->db->order_by('total', 'DESC');
    $query = $this->db->get();

    // melemparkan isinya
    return $query->first_row('array');
  }

  public function getTools_magnitude()
  {

    $this->db->group_by('tools');
    $this->db->select('tools');
    $this->db->select("count(*) as total");
    $this->db->from('tb_sejarah_olahraga');
    $this->db->join('tb_so_harian', 'tb_so_harian.id_so_harian=tb_sejarah_olahraga.id_so_soh', 'inner');
    $this->db->join('tb_data_olahraga', 'tb_data_olahraga.id_do=tb_sejarah_olahraga.id_so_olahraga', 'inner');
    $this->db->where('tb_so_harian.id_soh_akun', $this->session->userdata('user_id'));
    $this->db->order_by('total', 'DESC');
    $query = $this->db->get();

    // melemparkan isinya
    return $query->first_row('array');
  }

  public function getSportbyFav($fav)
  {
    // Mengambil database data olahraga
    // $this->db->select('sport');
    // $this->db->select('calories');
    // $this->db->select('tools');

    $this->db->where('intensitas', $fav);
    $query = $this->db->get('tb_data_olahraga');
    // melemparkan isinya
    return $query->result_array();
  }
}
