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
        "ORDER BY tanggal DESC LIMIT 0," . 6)->result_array();
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
        "ORDER BY tanggal DESC LIMIT 0," . 4)->result_array();
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
                            <!-- BAGIAN KIRI -->
                            <section class="col-lg-8">
                                <h2 class="card-header section-title justify-content-end">
                                    BERITA TERBARU
                                </h2>
                                <div class="row">
                                    <!-- BERITA BESAR -->
                                    <div class="container">
                                        <?php foreach ($get_berita as $berita) { ?>
                                            <?php
                                            $img_src = base_url() . 'asset/foto_berita/small_no-image.jpg';
                                            if ($berita['gambar'] !== '') {
                                                $img_src = base_url() . 'asset/foto_berita/' . $berita['gambar'];
                                            }
                                            ?>
                                            <img width="100%" class="post-img-container" style="background:url('<?php echo $img_src; ?>');
                                                        background-position:center;
                                                        background-size:cover;
                                                        background-repeat:no-repeat;
                                                        height:300px;">
                                            <div class="">
                                                <a href="<?php echo base_url($berita['judul_seo']); ?>"><h5><?php echo strip_tags(word_limiter($berita['judul'])); ?></h5></a>
                                                <i class="fa fa-calendar"></i> <?php echo tgl_indo($berita['tanggal']); ?>
                                                <p class="card-text"> <?php echo strip_tags(word_limiter($berita['isi_berita'], 120)); ?></p>
                                                <p class="card-text"><small class="text-muted"><a href="<?php echo base_url($berita['judul_seo']); ?>" class="read-more">
                                                            Selengkapnya
                                                        </a></small></p>
                                            </div>
                                    </div>
                                <?php } ?>

                                <!-- BERITA KECIL -->

                                <div class="row">
                                    <div class="container">
                                        <?php foreach ($get_berita3 as $berita) { ?>
                                            <div class="col-lg-12 mt-4">
                                                <div class="card mb-3">
                                                    <div class="row">
                                                        <div class="col-lg-7">
                                                            <a href="<?php echo base_url($berita['judul_seo']); ?>" class="">
                                                                <h6><?php echo strip_tags(word_limiter($berita['judul'])); ?></h6>
                                                                <i class="fa fa-calendar"></i> <?php echo tgl_indo($berita['tanggal']); ?>
                                                            </a>
                                                            <p class="card-text"> <?php echo strip_tags(word_limiter($berita['isi_berita'], 25)); ?></p>
                                                        </div>
                                                        <div class="col-lg-5">
                                                            <?php
                                                            $img_src = base_url() . 'asset/foto_berita/small_no-image.jpg';
                                                            if ($berita['gambar'] !== '') {
                                                                $img_src = base_url() . 'asset/foto_berita/' . $berita['gambar'];
                                                            }
                                                            ?>
                                                            <img width="100%" class="post-img-container" style="background:url('<?php echo $img_src; ?>');
                                                                background-position:center;
                                                                background-size:cover;
                                                                background-repeat:no-repeat;
                                                                height:100px;">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php } ?>
                                        <a href="<?php echo base_url() . "playlist/" ?>" class="btn btn-submit read-more">Selengkapnya</a>
                                    </div>
                                </div>
                                </div>
                            </section>
                            <!-- BAGIAN KANAN -->
                            <section class="col-lg-4">
                                <h2 class="card-header section-title">
                                    VIDEO TERBARU
                                </h2>
                                <div class="row">
                                    <div class="container">
                                        <?php
                                        $playlist = $this->model_utama->view_where_ordering_limit('playlist', array('aktif' => 'Y'), 'id_playlist', 'DESC', $dari, $config['per_page'] . 1);
                                        $no = $this->uri->segment(3) + 1;
                                        foreach ($playlist->result_array() as $h) {
                                            $total_video = $this->model_utama->view_where('video', array('id_playlist' => $h['id_playlist']))->num_rows();
                                            $img_src = base_url() . "asset/img_playlist/no-image.jpg";
                                            if ($h['gbr_playlist'] !== '' &&  file_exists($base_path . "asset/img_playlist/" . $h['gbr_playlist'])) {
                                                $img_src = base_url() . "asset/img_playlist/" . $h['gbr_playlist'];
                                            } ?>
                                            <a href="<?php echo base_url() . "playlist/detail/" . $h['playlist_seo']; ?>">
                                            <img width="100%" class="grd-thumb" style="
                                                    background: linear-gradient(360deg, #000000 8.07%, rgba(0, 0, 0, 0.507058) 46.38%, rgba(0, 0, 0, 0.197667) 68.88%, rgba(0, 0, 0, 0) 100%);
                                                    background:url('<?php echo $img_src; ?>');
                                                    box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.8);
                                                    padding: 120px;
                                                    background-position:center;
                                                    background-size:cover;
                                                    background-repeat:no-repeat;
                                                    height:100px;"></a>
                                            <div class="mt-2">
                                                <a href="<?php echo base_url() . "playlist/detail/" . $h['playlist_seo']; ?>"><?php echo $h['jdl_playlist']; ?></a>
                                                <a href="<?php echo base_url() . "playlist/" ?>" class="read-more">Selengkapnya</a>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <h2 class="card-header section-title">
                                    BERITA UTAMA
                                </h2>
                                <?php foreach ($get_berita2 as $berita) { ?>
                                <div class="row">
                                    <div class="container">
                                        <div class="card mb-3">
                                            <div class="row g-0">
                                                <div class="col-md-6">
                                                    <?php
                                                    $img_src = base_url() . 'asset/foto_berita/small_no-image.jpg';
                                                    if ($berita['gambar'] !== '') {
                                                        $img_src = base_url() . 'asset/foto_berita/' . $berita['gambar'];
                                                    }
                                                    ?>
                                                    <img width="100%" class="post-img-container" style="background:url('<?php echo $img_src; ?>');
                                                        background-position:center;
                                                        background-size:cover;
                                                        background-repeat:no-repeat;
                                                        height:100px;">
                                                </div>
                                                <div class="col-md-6">
                                                    <a href="<?php echo base_url($berita['judul_seo']); ?>"><small style="font-weight:bold;"><?php echo strip_tags(word_limiter($berita['judul'])); ?></small></a><br>
                                                    <i class="fa fa-calendar"></i> <?php echo tgl_indo($berita['tanggal']); ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php } ?>
                                <a href="<?php echo base_url() . "berita/" ?>" class="btn btn-submit read-more" style="margin-left:60%">Berita Lainnya <span></span></a>
                            </section>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>