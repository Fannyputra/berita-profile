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
<div id="<?php echo $item; ?>" class="section section-services" <?php if (!empty($section_berita['jumlah'])) {
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
                                                                } ?>>

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
                    <div class="row justify-content-center">
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
                                            <div class="col-lg-3 mb-2">
                                                <?php
                                                $img_src = base_url() . 'asset/foto_berita/small_no-image.jpg';
                                                if ($berita['gambar'] !== '') {
                                                    $img_src = base_url() . 'asset/foto_berita/' . $berita['gambar'];
                                                }
                                                ?>
                                                <div class="post-img-container" style="background:url('<?php echo $img_src; ?>');
                                                                background-position:center;
                                                                background-size:cover;
                                                                background-repeat:no-repeat;
                                                                height:200px;"></div>
                                                <!-- <img width="100%" src="<?= base_url() . 'asset/foto_berita/berita1.jpg' ?>" alt=""> -->
                                                <div class=" news-content">
                                                    <strong class="news-title">
                                                        <?php echo strip_tags(word_limiter($berita['judul'], 5)); ?>
                                                    </strong>
                                                    <div class="news-meta ml-2">
                                                        <i class="fa fa-calendar"></i> <?php echo tgl_indo($berita['tanggal']); ?> ,
                                                        <!-- <i class="fa fa-user"></i> <?php echo $berita['nama_lengkap']; ?>, -->
                                                        <a href="<?php echo base_url() . "kategori/detail/" . $berita['kategori_seo']; ?>">
                                                            <b><?php echo $berita['nama_kategori']; ?></b>
                                                        </a>
                                                    </div>
                                                </div>
                                                <small><?php echo strip_tags(word_limiter($berita['isi_berita'], 25)); ?></small>
                                                <div class="deskripsi read-more">
                                                    <a href="<?php echo base_url($berita['judul_seo']); ?>" class="read-more">
                                                        Selengkapnya
                                                    </a>
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