
<?php
$i = 0;
        foreach ($user1 as $u) {
?>  <div>
          <div class="col-md-4 resent-grid recommended-grid slider-top-grids">
						<div class="resent-grid-img recommended-grid-img">
							<a ><iframe src= "<?php echo "$u->url_vidio";?>" width="560" height="407" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media" allowFullScreen="true"></iframe></a>
                        </div>
                    </div>
       <?php if (++$i == 3) break; }
       
        ?>