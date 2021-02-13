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
        "ORDER BY tanggal DESC LIMIT 0," . 4)->result_array();
    $get_berita3 = $this->db->query("
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
        "ORDER BY tanggal DESC LIMIT 0," . 2)->result_array();
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
<div id="<?php echo $item; ?>" class="section section-news" style="margin-bottom: 20px;">
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
            <div class="card">
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
                    <div class="row">
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
                            <div class="">
                                <!-- BAGIAN KIRI -->
                                <div class="row">
                                    <section class="col-lg-7">
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
                                                        height:300px;"></div>
                                                    <div class="judul mt-2 pr-2">
                                                        <h5 class="news-title">
                                                            <?php echo $berita['judul']; ?>
                                                        </h5>
                                                        <div class="news-meta ml-2">
                                                            <i class="fa fa-calendar"></i> <?php echo tgl_indo($berita['tanggal']); ?> ,
                                                            <!-- <i class="fa fa-user"></i> <?php echo $berita['nama_lengkap']; ?>, -->
                                                            <a href="<?php echo base_url() . "kategori/detail/" . $berita['kategori_seo']; ?>">
                                                                <b><?php echo $berita['nama_kategori']; ?></b>
                                                            </a>
                                                        </div>
                                                        <?php echo strip_tags(word_limiter($berita['isi_berita'], 120)); ?>
                                                    </div>
                                                    <div class="deskripsi read-more">
                                                        <a href="<?php echo base_url($berita['judul_seo']); ?>" class="read-more">
                                                            Selengkapnya
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mt-3">
                                                <?php foreach ($get_berita3 as $berita) { ?>
                                                    <div class="col-lg-6">
                                                        <div class="post-content">
                                                            <h8 class="">
                                                                <a href="<?php echo base_url($berita['judul_seo']); ?>" class="">
                                                                    <h6><?php echo strip_tags(word_limiter($berita['judul'])); ?></h6>
                                                                </a>
                                                            </h8>
                                                            <div class="news-meta ">
                                                                <i class="fa fa-calendar"></i> <?php echo tgl_indo($berita['tanggal']); ?> ,
                                                                <!-- <i class="fa fa-user"></i> <?php echo $berita['nama_lengkap']; ?>, -->
                                                                <a href="<?php echo base_url() . "kategori/detail/" . $berita['kategori_seo']; ?>">
                                                                    <b><?php echo $berita['nama_kategori']; ?></b>
                                                                </a>
                                                            </div>
                                                            <?php echo strip_tags(word_limiter($berita['isi_berita'], 20)); ?>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 mt-3">
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
                                                    </div>
                                                <?php } ?>
                                            </div>
                                            <div class="deskripsi read-more">
                                                <a href="<?php echo base_url('/berita'); ?>" class="read-more" style="margin-left: 545px;">
                                                    <h8>Selengkapnya</h8>
                                                </a>
                                            </div>
                                        <?php } ?>
                                    </section>
                                    <section class="col-lg-4 widget card mb-4 widget-video" style="margin-left: 50px;">
                                        <div class="row" style="margin-top: -50px;">
                                            <div class="col-lg-12">
                                                <h5 class="card-header section-title" style="font-size: 20px; ">
                                                    VIDEO TERBARU
                                                </h5>
                                            </div>
                                            <?php
                                            $playlist = $this->model_utama->view_where_ordering_limit('playlist', array('aktif' => 'Y'), 'id_playlist', 'DESC', $dari, $config['per_page'] . 1);
                                            $no = $this->uri->segment(3) + 1;
                                            foreach ($playlist->result_array() as $h) {
                                                $total_video = $this->model_utama->view_where('video', array('id_playlist' => $h['id_playlist']))->num_rows();
                                                $img_src = base_url() . "asset/img_playlist/no-image.jpg";
                                                if ($h['gbr_playlist'] !== '' &&  file_exists($base_path . "asset/img_playlist/" . $h['gbr_playlist'])) {
                                                    $img_src = base_url() . "asset/img_playlist/" . $h['gbr_playlist'];
                                                }
                                            ?>
                                                <div class="col-lg-12 card">
                                                    <div class="post-img-container" style="
                                                    background:url('<?php echo $img_src; ?>');
                                                    box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.8);
                                                    padding: 120px;
                                                    background-position:center;
                                                    background-size:cover;
                                                    background-repeat:no-repeat;
                                                    height:100px;">
                                                    </div>
                                                    <div class="card-body">
                                                        <h6 class="card-title">
                                                            <a href="<?php echo base_url() . "playlist/detail/" . $h['playlist_seo']; ?>">
                                                                <?php echo $h['jdl_playlist']; ?>
                                                            </a>
                                                            <a href="<?php echo base_url() . "playlist/" ?>" class="read-more">
                                                                Selengkapnya
                                                            </a>
                                                        </h6>
                                                    </div>
                                                </div>
                                            <?php } ?>
                                        </div>
                                        <div class="row" style="margin-top: -50px;">
                                            <div class="col-lg-12">
                                                <h5 class="card-header section-title" style="font-size: 20px;">
                                                    BERITA UTAMA
                                                </h5>
                                            </div>
                                            <?php foreach ($get_berita2 as $berita) { ?>
                                                <div class="col-lg-6 mt-2">
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
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="post-content">
                                                        <h8 class="">
                                                            <a href="<?php echo base_url($berita['judul_seo']); ?>" class="">
                                                                <h6><?php echo strip_tags(word_limiter($berita['judul'])); ?></h6>
                                                            </a>
                                                        </h8>
                                                        <div class="news-meta ">
                                                            <i class="fa fa-calendar"></i> <?php echo tgl_indo($berita['tanggal']); ?> ,
                                                            <!-- <i class="fa fa-user"></i> <?php echo $berita['nama_lengkap']; ?>, -->
                                                            <a href="<?php echo base_url() . "kategori/detail/" . $berita['kategori_seo']; ?>">
                                                                <b><?php echo $berita['nama_kategori']; ?></b>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php } ?>
                                        </div>
                                        <div class="deskripsi read-more">
                                            <a href="<?php echo base_url('/berita'); ?>" class="read-more" style="margin-left: 250px;">
                                                <h8>Selengkapnya</h8>
                                            </a>
                                        </div>
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