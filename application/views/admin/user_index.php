<div id=hilang>
	<?= $this->session->flashdata('alert'); ?>
</div>
<a class="btn btn-primary m-2" href="<?= base_url('admin/user/tambah') ?>">Tambah User</a>
<div class="bg-light rounded h-100 p-4">
	<h6 class="mb-4">Data User</h6>
	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">No</th>
					<th scope="col">Username</th>
					<th scope="col">Nama</th>
					<th scope="col">Level</th>
					<th scope="col">Aksi</th>
				</tr>
			</thead>
			<tbody>
				<?php $no=1; foreach($user as $aa) {?>
				<tr>
					<th scope="row"><?= $no; ?></th>
					<td><?= $aa ['username'];?></td>
					<td><?= $aa ['nama'];?></td>
					<td><?= $aa ['level'];?></td>
					<td>
						<a class="btn btn-sm btn-danger"
							onClick="return confirm('Apakah anda yakin ingin menghapus user inii??')"
							href="<?= base_url('admin/user/hapus/'.$aa['id_user']) ?>">
							<i class="fa fa-trash"></i>
						</a>
						<a class="btn btn-sm btn-primary" data-bs-toggle="modal"
							data-bs-target="#exampleModal<?=$aa['id_user']?>" data-bs-whatever="@mdo">
							<i class="fa fa-edit"></i>
						</a>
					</td>
				</tr>

				<div class="modal fade" id="exampleModal<?=$aa['id_user']?>" tabindex="-1"
					aria-labelledby="exampleModalLabel<?=$aa['id_user']?>" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Update Data</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<form action="<?= base_url('admin/user/update')?>" method="POST">
									<input type="hidden" name="id_user" value=" <?=$aa['id_user'] ?>">
									<div class="mb-3">
										<label for="recipient-name" class="col-form-label">Nama:</label>
										<input type="text" class="form-control" value="<?=$aa['nama']?>" name="nama"
											id="recipient-name">
									</div>
									<div class="mb-3">
										<label for="recipient-name" class="col-form-label">Username:</label>
										<input type="text" class="form-control" value="<?=$aa['username']?>"
											name="username" id="recipient-name" readonly>
									</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
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