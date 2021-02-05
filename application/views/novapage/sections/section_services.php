<?php
$this->load->helper('text');
$get_section_services    = $this->model_utama->view_where('tbl_novapage', array('key' => 'section_services'))->row_array();
if (isset($get_section_services['value'])) {
    if (!empty($get_section_services['value'])) {
        $section_services = json_decode($get_section_services['value'], true);
    }
}
?>

<div id="<?php echo $item; ?>" class="section section-services" style=" background: #6c757d;">
    <div class="section-container" class="section section-services" style="background:url('<?php echo base_url('asset/img_novapage/images/kinerja.png' );?>');
 background-attachment: scroll; 
 background-size:90%;
 background-position:center;
 background-repeat:no-repeat;
">
        <div class="container">
            <div class="card py-4">
                <?php if (!empty($section_services['judul'])) { ?>
                    <h2 class="card-header section-title">
                        <?php echo strtoupper($section_services['judul']); ?>
                    </h2>
                <?php } ?>
                <?php if (!empty($section_services['deskripsi'])) { ?>
                    <div class="section-description">
                        <?php echo $section_services['deskripsi']; ?>
                    </div>
                <?php } ?>
                <div class="card-body">
                    <div class="row justify-content-center">
                        <?php if (!empty($section_services['item'])) { ?>
                            <?php foreach ($section_services['item'] as $item) { ?>
                                <div class="col-lg-3 mb-4 col-py-10">
                                    <div class="card card-border h-100 icon-grid grid-slide-up">
                                        <h1 class="text-center icon-header">
                                            <!-- <i class="<?php echo $item['icon']; ?>"></i> -->
                                            <?php
                                            $img_src = base_url() . '/asset/img_novapage/icon/';
                                            if ($berita['gambar'] !== '') {
                                                $img_src = base_url() . '/asset/img_novapage/images/' . $item['icon'];
                                            }
                                            ?>
                                            <div class="post-img-container" style="background:url('<?php echo $img_src; ?>');
                                                background-position:center;
                                                background-size:70px;
                                                background-repeat:no-repeat;
                                                height:100px;"></div>
                                        </h1>
                                        <?php
                                        $url_link = '#';
                                        if ($item['link_halaman'] !== '') {
                                            $url_link = base_url('halaman/detail/' . $item['link_halaman']);
                                        }
                                        ?>
                                        <div class="card-body text-center icon-body">
                                            <a href="<?php echo $url_link; ?>">
                                                <small class="icon-title" style="color: #FFA500;"><?php echo $item['judul']; ?></small>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>