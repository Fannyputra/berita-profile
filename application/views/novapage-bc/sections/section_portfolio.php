<?php
$get_section_portfolio    = $this->model_utama->view_where('tbl_novapage', array('key' => 'section_portfolio'))->row_array();
if (isset($get_section_portfolio['value'])) {
    if (!empty($get_section_portfolio['value'])) {
        $section_portfolio = json_decode($get_section_portfolio['value'], true);
    }
}

// get portfolio 
if (isset($section_portfolio['jumlah'])) {
    $get_portfolio = $this->db->query(
        "
    SELECT 
        portfolio.id_portfolio as id,
        portfolio.nama_project as nama,
        portfolio.nama_client as client,
        portfolio.deskripsi as deskripsi,
        portfolio.url as url,
        portfolio.image as image
    FROM 
        tbl_novapage_portfolio portfolio
    ORDER BY portfolio.nama_project ASC 
    LIMIT 0," . $section_portfolio['jumlah']
    )->result_array();
}
?>

<div id="<?php echo $item; ?>" class="section section-porfolio">
    <?php
    $skema_warna = 'default';
    switch ($section_portfolio['skema_warna']) {
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
                <?php if (!empty($section_portfolio['judul'])) { ?>
                    <h2 class="card-header section-title">
                        <?php echo strtoupper($section_portfolio['judul']); ?>
                    </h2>
                <?php } ?>
                <?php if (!empty($section_portfolio['deskripsi'])) { ?>
                    <div class="section-description">
                        <?php echo $section_portfolio['deskripsi']; ?>
                    </div>
                <?php } ?>
                <div class="container">
                    <!-- FOTO -->
                    <div class="row">
                        <div class="row justify-content-center">
                            <?php
                            $album = $this->model_utama->view_where_ordering_limit('album', array('aktif' => 'Y'), 'id_album', 'DESC', $dari, $config['per_page']  . 4);
                            $no = $this->uri->segment(3) + 1;
                            foreach ($album->result_array() as $h) {
                                $total_foto = $this->model_utama->view_where('gallery', array('id_album' => $h['id_album']))->num_rows();
                                $img_src = base_url() . "asset/img_album/no-image.jpg";
                                if ($h['gbr_album'] !== '' &&  file_exists($base_path . "asset/img_playlist/" . $h['gbr_playlist'])) {
                                    $img_src = base_url() . "asset/img_album/" . $h['gbr_album'];
                                }
                            ?>
                                <div class="col-lg-3 mb-4 col-py-10">
                                    <div class="card card-border h-100 icon-grid">
                                        <div class="post-img-container" style="
                                                background:url('<?php echo $img_src; ?>');
                                                box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.8);
                                                padding: 100px;
                                                background-position:center;
                                                background-size:cover;
                                                background-repeat:no-repeat;
                                                height:120px;"></div>
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <a href="<?php echo base_url() . "albums/detail/" . $h['album_seo']; ?>">
                                                    <?php echo $h['jdl_album']; ?>
                                                </a>
                                            </h6>
                                            <div class="post-meta">
                                                <i class="fa fa-calendar" aria-hidden="true"></i> <?php echo tgl_indo($h['tgl_posting']); ?> ,
                                                dilihat <?php echo $h['hits_album']; ?> x
                                            </div>
                                            <div class="card-text">
                                                Ada <?php echo $total_foto; ?> Foto
                                            </div>
                                            <a href="<?php echo base_url() . "albums/detail/" . $h['album_seo']; ?>" class="read-more">
                                                Selengkapnya
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            <?php
                            }
                            ?>
                        </div>
                        <!-- VIDEO -->
                        <div class="row justify-content-center">
                            <?php
                            $playlist = $this->model_utama->view_where_ordering_limit('playlist', array('aktif' => 'Y'), 'id_playlist', 'DESC', $dari, $config['per_page'] . 4);
                            $no = $this->uri->segment(3) + 1;
                            foreach ($playlist->result_array() as $h) {
                                $total_video = $this->model_utama->view_where('video', array('id_playlist' => $h['id_playlist']))->num_rows();
                                $img_src = base_url() . "asset/img_playlist/no-image.jpg";
                                if ($h['gbr_playlist'] !== '' &&  file_exists($base_path . "asset/img_playlist/" . $h['gbr_playlist'])) {
                                    $img_src = base_url() . "asset/img_playlist/" . $h['gbr_playlist'];
                                }
                            ?>
                                <div class="col-lg-3 mb-4 col-py-10">
                                <div class="card card-border h-100 icon-grid">
                                    <div class="post-img-container" style="
                                                background:url('<?php echo $img_src; ?>');
                                                box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.8);
                                                padding: 100px;
                                                background-position:center;
                                                background-size:cover;
                                                background-repeat:no-repeat;
                                                height:100px;"></div>
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <a href="<?php echo base_url() . "playlist/detail/" . $h['playlist_seo']; ?>">
                                                    <?php echo $h['jdl_playlist']; ?>
                                                </a>
                                            </h6>
                                            <!-- <div class="post-meta">
                                                <i class="fa fa-calendar" aria-hidden="true"></i> <?php echo tgl_indo($h['tgl_posting']); ?>
                                                dilihat <?php echo $h['hits_album']; ?> x
                                            </div> -->
                                            <div class="card-text">
                                                <?php echo $total_video; ?> Video
                                            </div>
                                            <a href="<?php echo base_url() . "playlist/detail/" . $h['playlist_seo']; ?>" class="read-more">
                                                Selengkapnya
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            <?php }?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>