<?php
$get_section_team    = $this->model_utama->view_where('tbl_novapage', array('key' => 'section_team'))->row_array();
if (isset($get_section_team['value'])) {
    if (!empty($get_section_team['value'])) {
        $section_team = json_decode($get_section_team['value'], true);
    }
}

// koleksi id team
$get_personal_id = array();
if (isset($section_team['item'])) {
    if (!empty($section_team['item'])) {
        foreach ($section_team['item'] as $team) {
            array_push($get_personal_id, $team['team_id']);
        }
    }
}
// get personal
// get berita
$where = '';
if (!empty($section_berita['kategori'])) {
    $where = ' AND b.id_kategori = "' . $section_berita['kategori'] . '"';
}
?>
<div id="<?php echo $item ;?>" class="section section-services"
<?php if (!empty($section_berita['jumlah'])) {
        $get_kutipan = $this->db->query("
                SELECT 
                    b.id_berita as id,
                    b.judul as judul,                
                    b.judul_seo as judul_seo,       
                    b.isi_berita as isi_berita, 
                    b.gambar as gambar,                    
                    b.tanggal as tanggal,
                    b.id_kategori as id_kategori,
                    k.nama_kategori as nama_kategori,
                    k.kategori_seo as kategori_seo,
                    u.nama_lengkap as nama_lengkap
                FROM 
                    berita b 
                    JOIN users u on u.username = b.username 
                    JOIN kategori k on k.id_kategori = b.id_kategori
                WHERE
                    b.status = 'Y' AND
                    b.id_kategori = '5' " .
            "ORDER BY tanggal DESC LIMIT 0," . 8)->result_array();
    }?>
    >

    <div class="section-container <?php echo $skema_warna; ?>">
        <div class="container">
            <div class="card py-4">
                <?php if (!empty($section_team['judul'])) { ?>
                    <h2 class="card-header section-title">
                        <?php echo strtoupper($section_team['judul']); ?>
                    </h2>
                <?php } ?>
                <?php if (!empty($section_team['deskripsi'])) { ?>
                    <div class="section-description">
                        <?php echo $section_team['deskripsi']; ?>
                    </div>
                <?php } ?>
                <div class="card-body">
                    <div class="">
                        <?php if (!empty($get_personal)) { ?>
                            <?php
                            switch ((int) $section_team['layout']) {
                                case 2:
                                    $layout = '6';
                                    break;
                                case 3:
                                    $layout = '4';
                                    break;
                                case 4:
                                    $layout = '3';
                                    break;
                                default:
                                    $layout = '6';
                                    break;
                            }
                            ?>
                        <?php } ?>

                        <div class="editors-news">
                            <!-- BAGIAN KIRI -->
                            <div class="row">
                                <section class="col-lg-12">
                                    <div class="row">
                                    <?php foreach ($get_kutipan as $berita) { ?>
                                        <div class="col-lg-6 mt-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-lg-7">
                                                        <a href="<?php echo base_url($berita['judul_seo']); ?>"><h5 class="card-title"><?php echo strip_tags(word_limiter($berita['judul'], 5)); ?></h5></a>
                                                        <p class="card-text"><?php echo strip_tags(word_limiter($berita['isi_berita'], 25)); ?></p>
                                                        <a href="<?php echo base_url($berita['judul_seo']); ?>" class="read-more">
                                                            Selengkapnya
                                                        </a>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="col-md-2">
                                                            <?php
                                                            $img_src = base_url() . 'asset/foto_berita/small_no-image.jpg';
                                                            if ($berita['gambar'] !== '') {
                                                                $img_src = base_url() . 'asset/foto_berita/' . $berita['gambar'];
                                                            }
                                                            ?>
                                                           <img width="100%" class="grd-thumb" style="
                                                             background:url('<?php echo $img_src; ?>');
                                                            margin-right: -50px;
                                                            padding: 100px;
                                                            background-position:center;
                                                            background-size:cover;
                                                            background-repeat:no-repeat;
                                                            height:100px;">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <?php } ?>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>