
<?php

        foreach ($user1 as $u) {
?> 


<div class="col-sm-6 col-md-9">
			<div class="thumbnail">
				<img src="<?= base_url('assets/img/kon/') . $u->gambar; ?>" width="250p" alt="">
				<div class="caption">
        </br></div></div>
					<h3><?php echo "$u->judulkonten";?></h3>
					<p align="justify"><?php echo "$u->isi";?></p>
        </br>
                                </div>
                                <?php  }
       
       ?>