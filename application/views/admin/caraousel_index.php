<div id=hilang>
	<?= $this->session->flashdata('alert'); ?>
</div>
<div class="card">
	<form action="<?= base_url('admin/caraousel/simpan')?>" method="POST" enctype="multipart/form-data">
		<div class="card-body">
			<h5 class="card-title">Upload File</h5>
			<p class="card-text">Pilih file yang ingin Anda unggah dan masukkan judulnya.</p>
			<div class="mb-3">
				<label for="formTitle" class="form-label">Judul</label>
				<input class="form-control" type="text" name="judul" id="formTitle" placeholder="Masukkan judul">
			</div>
			<div class="mb-3">
				<label for="formTitle" class="form-label">Judul2</label>
				<input class="form-control" type="text" name="judul2" id="formTitle" placeholder="Masukkan judul2">
			</div>
			<div class="mb-3">
				<label for="formFile" class="form-label">Pilih Foto</label>
				<p class="card-text">Pilih Foto Dengan Ukuran (1:3)</p>
				<input class="form-control" type="file" name="foto" id="formFile">
			</div>
			<button type="submit" class="btn btn-primary">Unggah</button>
		</div>
	</form>
</div>

<?php foreach($caraousel as $aa){?>
<div class="card text-center"
	style="display: flex; flex-direction: column; justify-content: center; align-items: center;">
	<img src="<?= base_url('assets/upload/caraousel/'.$aa['foto']) ?>" class="card-img-top" alt="">
	<div class="card-body" style="display: flex; flex-direction: column; justify-content: center; align-items: center;">
		<h5 class="card-title"><?= $aa['judul'] ?></h5>
		<h5 class="card-title"><?= $aa['judul2'] ?></h5>
		<a class="btn btn-sm btn-danger" onClick="return confirm('Apakah anda yakin ingin menghapus konten ini??')"
			href="<?= base_url('admin/caraousel/hapus/'.$aa['foto']) ?>">
			<i class="fa fa-trash"></i>
		</a>
	</div>
</div>

<?php } ?>