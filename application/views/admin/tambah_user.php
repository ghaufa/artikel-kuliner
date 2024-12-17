<div class="card-body">
	<form action="<?= base_url('admin/user/simpan')?>" method="POST">
		<div class="mb-3">
			<label for="exampleInputtext" class="form-label" >Username</label>
			<input name="username" type="text" class="form-control" id="exampleInputtext" aria-describedby="emailHelp">
		</div>
		<div class="mb-3">
			<label for="exampleInputtext" class="form-label" >Nama</label>
			<input name="nama" type="text" class="form-control" id="exampleInputtext">
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label" >Password</label>
			<input name="password" type="password" class="form-control" id="exampleInputPassword1">
		</div>
		<div class="mb-3">
                        <label for="disabledSelect" class="form-label">Level</label>
                        <select name="level" id="disabledSelect" class="form-select">
                          <option>Admin</option>
                          <option>Kontributor</option>
                        </select>
                      </div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>