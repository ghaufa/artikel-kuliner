<div id=hilang>
	<?= $this->session->flashdata('alert'); ?>
</div>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">Tambah Kategori</button>
<div class="bg-light rounded h-100 p-4">
	<h6 class="mb-4">Kategori Konten</h6>
	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Nomer</th>
					<th scope="col">Nama Kategori Konten</th>
					<th scope="col">Aksi</th>
				</tr>
			</thead>
			<tbody>
				<?php $no=1; foreach($kategori as $aa) {?>
				<tr>
					<th scope="row"><?= $no; ?></th>
					<td><?= $aa ['nama_kategori'];?></td>
					<td>
						<a class="btn btn-sm btn-danger" 
						onClick="return confirm('Apakah anda yakin ingin menghapus user inii??')"
						href="<?= base_url('admin/kategori/hapus/'.$aa['id_kategori']) ?>">
						<i class="fa fa-trash"></i>
						</a>
						<a class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal<?=$aa['id_kategori']?>"
						data-bs-whatever="@mdo">
						<i class="fa fa-edit"></i>
						</a>
					</td>
				</tr>

				<div class="modal fade" id="exampleModal<?=$aa['id_kategori']?>" tabindex="-1" aria-labelledby="exampleModalLabel<?=$aa['id_kategori']?>"
						aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Update Kategori</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<form action="<?= base_url('admin/kategori/update')?>" method="POST">
									<input type="hidden" name="id_kategori" value=" <?=$aa['id_kategori'] ?>">
										<div class="mb-3">
											<label for="recipient-name" class="col-form-label">Nama Kategori Konten</label>
											<input type="text" class="form-control" value="<?=$aa['nama_kategori']?>" name="nama_kategori" id="recipient-name">
										</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>
									<button type="submit" class="btn btn-primary">Send message</button>
								</div>
								</form>
							</div>
						</div>
					</div>
				<?php $no++; } ?>
			</tbody>
		</table>
	</div>
</div>

<!-- modal tambah  -->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Kategori</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="<?= base_url('admin/kategori/simpan')?>" method="POST">
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">Nama Kategori</label>
            <input type="text" class="form-control" name="nama_kategori" id="recipient-name">
          </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
    </div>
  </div>
</div>