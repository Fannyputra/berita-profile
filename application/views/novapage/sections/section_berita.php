<?php
$this->load->helper('text');
$get_section_berita    = $this->model_utama->view_where('tbl_novapage', array('key' => 'section_berita'))->row_array();
if (isset($get_section_berita['value'])) {
    if (!empty($get_section_berita['value'])) {
        $section_berita = json_decode($get_section_berita['value'], true);
    }
}
// get berita
$where = '';
if (!empty($section_berita['kategori'])) {
    $where = ' AND b.id_kategori = "' . $section_berita['kategori'] . '"';
}

if (!empty($section_berita['jumlah'])) {
    $get_berita = $this->db->query("
                SELECT 
                    b.id_berita as id,
                    b.judul as judul,                
                    b.judul_seo as judul_seo,       
                    b.isi_berita as isi_berita, 
                    b.gambar as gambar,                    
                    b.tanggal as tanggal,
                    k.nama_kategori as nama_kategori,
                    k.kategori_seo as kategori_seo,
                    u.nama_lengkap as nama_lengkap
                FROM 
                    berita b 
                    JOIN users u on u.username = b.username 
                    JOIN kategori k on k.id_kategori = b.id_kategori
                WHERE
                    b.status = 'Y' " .
        $where .
        "ORDER BY tanggal DESC LIMIT 0," . $section_berita['jumlah'])->result_array();
        $get_berita2 = $this->db->query("
            SELECT 
                b.id_berita as id,
                b.judul as judul,                
                b.judul_seo as judul_seo,       
                b.isi_berita as isi_berita, 
                b.gambar as gambar,                    
                b.tanggal as tanggal,
                k.nama_kategori as nama_kategori,
                k.kategori_seo as kategori_seo,
                u.nama_lengkap as nama_lengkap
            FROM 
                berita b 
                JOIN users u on u.username = b.username 
                JOIN kategori k on k.id_kategori = b.id_kategori
            WHERE
                b.status = 'Y' " .
            $where .
            "ORDER BY tanggal DESC LIMIT 0," . 5)->result_array();
            $video = $this->db->query("
            SELECT 
                b.id_berita as id,
                b.judul as judul,                
                b.judul_seo as judul_seo,       
                b.isi_berita as isi_berita, 
                b.gambar as gambar,                    
                b.tanggal as tanggal,
                k.nama_kategori as nama_kategori,
                k.kategori_seo as kategori_seo,
                u.nama_lengkap as nama_lengkap
            FROM 
                berita b 
                JOIN users u on u.username = b.username 
                JOIN kategori k on k.id_kategori = b.id_kategori
            WHERE
                b.status = 'Y' " .
            $where .
            "ORDER BY tanggal DESC LIMIT 0," . 5)->result_array();
    }

?>
<div id="<?php echo $item; ?>" class="section section-news">
    <?php
    $skema_warna = 'default';
    switch ($section_berita['skema_warna']) {
        case 'dark':
            $skema_warna = 'dark';
            break;
        case 'light':
            $skema_warna = 'light';
            break;
        default:
            $skema_warna = 'default';
            break;
    }
    ?>
    <div class="section-container <?php echo $skema_warna; ?>">
        <div class="container">
            <div class="card py-4">
                <?php if (!empty($section_berita['judul'])) { ?>
                    <h2 class="card-header section-title">
                        <?php echo strtoupper($section_berita['judul']); ?>
                    </h2>
                <?php } ?>
                <?php if (!empty($section_berita['deskripsi'])) { ?>
                    <div class="section-description">
                        <?php echo $section_berita['deskripsi']; ?>
                    </div>
                <?php } ?>
                <div class="editors-news">
                    <div class="row justify-content-center">
                        <?php if (!empty($get_berita)) { ?>
                            <?php
                            switch ((int) $section_berita['layout']) {
                                case 2:
                                    $layout = '6';
                                    break;
                                case 3:
                                    $layout = '4';
                                    break;
                                default:
                                    $layout = '6';
                                    break;
                            }
                            ?>
                            <div class="container">
                                <!-- BAGIAN KIRI -->
                                <div class="row">
                                    <section class="col-lg-7">
                                        <!-- <div class="col-lg-12">
                                                <strong>Berita Baru-baru ini</strong>
                                            </div> -->
                                        <?php foreach ($get_berita as $berita) { ?>
                                        <div class="row mt-3">
                                            <div class="col-lg-12">
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
                                                height:550px;"></div>
                                                <!-- <img width="100%" src="('<?php echo $img_src; ?>');" alt=""> -->
                            
                                                <div class="judul mt-2 pr-2">
                                                    <h5 class="news-title">
                                                        <?php echo $berita['judul']; ?>
                                                    </h5>
                                                    <div class="news-meta ml-2">
                                                    <i class="fa fa-calendar"></i> <?php echo tgl_indo($berita['tanggal']); ?> ,
                                                    <i class="fa fa-user"></i> <?php echo $berita['nama_lengkap']; ?>,
                                                    <a href="<?php echo base_url() . "kategori/detail/" . $berita['kategori_seo']; ?>">
                                                        <b><?php echo $berita['nama_kategori']; ?></b>
                                                    </a>
                                                    </div>
                                                    <?php echo strip_tags(word_limiter($berita['isi_berita'], 100)); ?>
                                                </div>
                                                <div class="deskripsi read-more">
                                                    <a href="<?php echo base_url($berita['judul_seo']); ?>" class="read-more">
                                                        Selengkapnya
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <?php } ?>
                                    </section>

                                  

                                    <section class="col-lg-5">
                                        <?php foreach ($get_berita2 as $berita) { ?>
                                        <div class="row mt-3">
                                            <div class="col-lg-6">
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
                                                height:120px;"></div>
                                                <!-- <img width="100%" src="<?= base_url().'asset/foto_berita/berita1.jpg'?>" alt=""> -->
                                            </div>
                                            <div class="col-lg-6">
                                                <div class=" news-content">
                                                    <h8 class="news-title">
                                                        <strong><?php echo strip_tags(word_limiter($berita['judul'], 5)); ?></strong>
                                                    </h8>
                                                    <br>
                                                    <div class="news-meta ml-2">
                                                    <i class="fa fa-calendar"></i> <?php echo tgl_indo($berita['tanggal']); ?> ,
                                                    <i class="fa fa-user"></i> <?php echo $berita['nama_lengkap']; ?>,
                                                    <a href="<?php echo base_url() . "kategori/detail/" . $berita['kategori_seo']; ?>">
                                                        <b><?php echo $berita['nama_kategori']; ?></b>
                                                    </a>
                                                </div>
                                                    
                                                </div>
                                                <div class="news-meta ml-2">
                                                    <h7><?php echo strip_tags(word_limiter($berita['isi_berita'], 20)); ?></h7>
                                                </div>
                                                <div class="deskripsi read-more">
                                                    <a href="<?php echo base_url($berita['judul_seo']); ?>" class="read-more">
                                                        <h8>Selengkapnya</h8>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <?php } ?>
                                    </section>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>