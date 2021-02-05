<?php
$this->load->helper('text');

$get_section_feature    = $this->model_utama->view_where('tbl_novapage', array('key' => 'section_feature'))->row_array();
if (isset($get_section_feature['value'])) {
    if (!empty($get_section_feature['value'])) {
        $section_feature = json_decode($get_section_feature['value'], true);
    }
}
?>

<div id="<?php echo $item; ?>" class="section section-feature">
    <div class="section-container">
        <div class="section-background" <?php
                                        $skema_warna = 'default';
                                        switch ($section_feature['skema_warna']) {
                                            case 'image':
                                                $skema_warna = 'bg-image';
                                        ?> style="background:url('<?php echo base_url('asset/img_novapage/images/' . $section_feature['background']); ?>');
                            background-attachment: fixed; 
                            background-size:cover;
                            background-repeat:no-repeat" <?php
                                                            break;
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
                                                            ?>>
            <div class="section-header ">
                <div class="container">
                    <div class="card">
                        <div class="card-body">
                            <?php if (!empty($section_feature['judul'])) { ?>
                                <!-- <h2 class="card-header section-title"> -->
                                <!-- <?php echo strtoupper($section_feature['judul']); ?> -->
                                <!-- </h2> -->
                            <?php } ?>
                            <?php if (!empty($section_feature['deskripsi'])) { ?>
                                <div class="section-description">
                                    <!-- <?php echo $section_feature['deskripsi']; ?> -->
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-body">
            <div class="container">
                <div class="card">
                    <div class="card-body">
                        <div class="row justify-content-center">
                            <div class="col-lg-2 mb-4 col-py-2">
                                <div class="card card-border icon-grid  grid-slide-up">
                                    <h5 class="text-center icon-header">
                                        <div class="post-img-container" style="background:url('<?php echo base_url('asset/img_novapage/icon/facebookcolor.png'); ?>');
                                                background-position:center;
                                                background-size:50px;
                                                background-repeat:no-repeat;
                                                height:60px;"></div>
                                    </h5>
                                    <div class=" icon-body text-center">
                                        <div class="text mb-2">
                                            gerindrajateng
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 mb-4 col-py-2">
                                <div class="card card-border icon-grid  grid-slide-up">
                                    <h5 class="text-center icon-header">
                                        <div class="post-img-container" style="background:url('<?php echo base_url('asset/img_novapage/icon/twittercolor.png'); ?>');
                                                background-position:center;
                                                background-size:50px;
                                                background-repeat:no-repeat;
                                                height:60px;"></div>
                                    </h5>
                                    <div class=" icon-body text-center">
                                        <div class="text mb-2">
                                            @gerindrajateng
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 mb-4 col-py-2">
                                <div class="card card-border icon-grid  grid-slide-up">
                                    <h5 class="text-center icon-header">
                                        <div class="post-img-container" style="background:url('<?php echo base_url('asset/img_novapage/icon/igcolor.png'); ?>');
                                                background-position:center;
                                                background-size:50px;
                                                background-repeat:no-repeat;
                                                height:60px;"></div>
                                    </h5>
                                    <div class=" icon-body text-center">
                                        <div class="text mb-2">
                                            @gerindrajateng
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 mb-4 col-py-2">
                                <div class="card card-border icon-grid  grid-slide-up">
                                    <h5 class="text-center icon-header">
                                        <div class="post-img-container" style="background:url('<?php echo base_url('asset/img_novapage/icon/titokcolor.png'); ?>');
                                                background-position:center;
                                                background-size:50px;
                                                background-repeat:no-repeat;
                                                height:60px;"></div>
                                    </h5>
                                    <div class=" icon-body text-center">
                                        <div class="text mb-2">
                                            @gerindrajateng
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 mb-4 col-py-2">
                                <div class="card card-border icon-grid  grid-slide-up">
                                    <h5 class="text-center icon-header">
                                        <div class="post-img-container" style="background:url('<?php echo base_url('asset/img_novapage/icon/youtubecolor.png'); ?>');
                                                background-position:center;
                                                background-size:50px;
                                                background-repeat:no-repeat;
                                                height:60px;"></div>
                                    </h5>
                                    <div class=" icon-body text-sm-left">
                                        <div class="text mb-4">
                                            gerindrajateng
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>