<?php
$this->load->helper('text');

$get_section_feature    = $this->model_utama->view_where('tbl_novapage', array('key' => 'section_feature'))->row_array();
if (isset($get_section_feature['value'])) {
    if (!empty($get_section_feature['value'])) {
        $section_feature = json_decode($get_section_feature['value'], true);
    }
}
?>

<div id="<?php echo $item; ?>" class="section section-feature hidden-xs">
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
                <div class="">
                    <div id="social-media-top" class="container-fluid " style="margin-bottom: -70%;">
                        <div class="row">
                            <div class="col-sm-2">
                                <a href="//fb.com/gerindrajateng" target="_blank"><img src="<?php echo base_url('asset/img_novapage/icon/facebook.png'); ?>" alt="facebook" class="img-responsive wow fadeIn" data-wow-duration="2s" data-wow-delay=".5s" style="width: 100%; visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: u;"></a>
                            </div>
                            <div class="col-sm-2">
                                <a href="//twitter.com/gerindrajtg" target="_blank"><img src="<?php echo base_url('asset/img_novapage/icon/twitter.png'); ?>" alt="twitter" class="img-responsive wow fadeIn" data-wow-duration="2s" data-wow-delay=".5s" style="width: 80%; visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: u;"></a>
                            </div>
                            <div class="col-sm-2">
                                <a href="//instagram.com/gerindrajateng" target="_blank"><img src="<?php echo base_url('asset/img_novapage/icon/instagram.png'); ?>" alt="instagram" class="img-responsive wow fadeIn" data-wow-duration="2s" data-wow-delay=".5s" style="width: 100%; visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: u;"></a>
                            </div>
                            <div class="col-sm-2">
                                <a href="#" target="_blank"><img src="<?php echo base_url('asset/img_novapage/icon/youtube.png'); ?>" alt="youtube" class="img-responsive wow fadeIn" data-wow-duration="2s" data-wow-delay=".5s" style="width: 100%; visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: u;"></a>
                            </div>
                            <div class="col-sm-2">
                                <a href="//tiktok.com/@gerindrajateng" target="_blank"><img src="<?php echo base_url('asset/img_novapage/icon/tiktok.png'); ?>" alt="tiktok" class="img-responsive wow fadeIn" data-wow-duration="2s" data-wow-delay=".5s" style="width: 100%; visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: u;"></a>
                            </div>
                            <div class="col-sm-2">
                                <a href="#"><img src="<?php echo base_url('asset/img_novapage/icon/telegram.png'); ?>" alt="telegram" class="img-responsive wow fadeIn" data-wow-duration="2s" data-wow-delay=".5s" style="width: 100%; visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: u;"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- <div class="section-body">
            <div class="container">
                <div class="card">
                    <div class="card-body">
                        <div class="row" style="margin-right: -120px; margin-left: -120px;">
                            <div class="col-sm-2">
                                <a href="//fb.com/gerindrajateng" target="_blank"><img src="<?php echo base_url('asset/img_novapage/icon/facebook.png'); ?>" alt="" class="img-responsive wow fadeIn" data-wow-duration="2s" data-wow-delay=".5s" style="background-size:40px;  height:35px; visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: u;"></a>
                            </div>
                            <div class="col-sm-2">
                                <a href="//twitter.com/gerindrajtg" target="_blank"><img src="<?php echo base_url('asset/img_novapage/icon/twitter.png'); ?>" alt="" class="img-responsive wow fadeIn" data-wow-duration="2s" data-wow-delay=".5s" style="background-size:40px;  height:35px; visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: u;"></a>
                            </div>
                            <div class="col-sm-2">
                                <a href="//instagram.com/gerindrajateng" target="_blank"><img src="<?php echo base_url('asset/img_novapage/icon/instagram.png'); ?>" alt="" class="img-responsive wow fadeIn" data-wow-duration="2s" data-wow-delay=".5s" style="background-size:40px;  height:35px; visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: u;"></a>
                            </div>
                            <div class="col-sm-2">
                                <a href="#" target="_blank"><img src="<?php echo base_url('asset/img_novapage/icon/youtube.png'); ?>" alt="" class="img-responsive wow fadeIn" data-wow-duration="2s" data-wow-delay=".5s" style="background-size:40px;  height:35px; visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: u;"></a>
                            </div>
                            <div class="col-sm-2">
                                <a href="//tiktok.com/@gerindrajateng" target="_blank"><img src="<?php echo base_url('asset/img_novapage/icon/tiktok.png'); ?>" alt="" class="img-responsive wow fadeIn" data-wow-duration="2s" data-wow-delay=".5s" style="background-size:40px;  height:35px; visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: u;"></a>
                            </div>
                            <div class="col-sm-2">
                                <a href="#" target="_blank"><img src="<?php echo base_url('asset/img_novapage/icon/telegram.png'); ?>" alt="" class="img-responsive wow fadeIn" data-wow-duration="2s" data-wow-delay=".5s" style="background-size:40px;  height:35px; visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: u;"></a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div> -->
    </div>
</div>