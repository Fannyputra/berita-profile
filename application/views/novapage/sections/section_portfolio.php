<?php
$get_section_portfolio    = $this->model_utama->view_where('tbl_novapage',array('key' => 'section_portfolio'))->row_array();
if(isset($get_section_portfolio['value'])){
	if(!empty($get_section_portfolio['value'])){
		$section_portfolio = json_decode($get_section_portfolio['value'],true);
	}
} 

// get portfolio 
if( isset($section_portfolio['jumlah'])) {
$get_portfolio = $this->db->query("
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
    LIMIT 0,".$section_portfolio['jumlah']
)->result_array(); 
}
?>

<div id="<?php echo $item ;?>" class="section section-porfolio">
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
    <div class="section-container <?php echo $skema_warna;?>">
        <div class="container">
            <div class="card py-4">
                <?php if( !empty($section_portfolio['judul'])) { ?>
                <h2 class="card-header section-title">
                    <?php echo strtoupper($section_portfolio['judul']);?>
                </h2>
                <?php } ?>
                <?php if( !empty($section_portfolio['deskripsi'])) { ?>
                <div class="section-description">
                    <?php echo $section_portfolio['deskripsi'];?>
                </div>
                <?php } ?> 
                <div class="container">
                    <!-- FOTO -->
                    <div class="row">
                        <div class="card-body col-lg-4 col-md-6">
                            <img width="100%" style="box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.8); padding: 10px;" src="<?= base_url() ?>/asset/img_novapage/portfolio/berita1.jpg" alt="">
                            <h4 class="text-center mt-2"><strong>JUDUL FOTO</strong></h4>
                        </div>
                        <div class="card-body col-lg-4 col-md-6">
                            <img width="100%" style="box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.8); padding: 10px;" src="<?= base_url() ?>/asset/img_novapage/portfolio/berita1.jpg" alt="">
                            <h4 class="text-center mt-2"><strong>JUDUL FOTO</strong></h4>
                        </div>
                        <div class="card-body col-lg-4 col-md-6">
                            <img width="100%" style="box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.8); padding: 10px;" src="<?= base_url() ?>/asset/img_novapage/portfolio/berita1.jpg" alt="">
                            <h4 class="text-center mt-2"><strong>JUDUL FOTO</strong></h4>
                        </div>
                    </div>
                    <!-- VIDEO -->
                    <div class="row">
                        <div class="card-body col-lg-4 col-md-6">
                            <img width="100%" style="box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.8); padding: 10px;" src="<?= base_url() ?>/asset/img_novapage/portfolio/berita1.jpg" alt="">
                            <h4 class="text-center mt-2"><strong>JUDUL VIDEO</strong></h4>
                        </div>
                        <div class="card-body col-lg-4 col-md-6">
                            <img width="100%" style="box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.8); padding: 10px;" src="<?= base_url() ?>/asset/img_novapage/portfolio/berita1.jpg" alt="">
                            <h4 class="text-center mt-2"><strong>JUDUL VIDEO</strong></h4>
                        </div>
                        <div class="card-body col-lg-4 col-md-6">
                            <img width="100%" style="box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.8); padding: 10px;" src="<?= base_url() ?>/asset/img_novapage/portfolio/berita1.jpg" alt="">
                            <h4 class="text-center mt-2"><strong>JUDUL VIDEO</strong></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> 
</div> 