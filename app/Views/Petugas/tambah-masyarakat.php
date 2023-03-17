<?= $this->extend('dashboard') ?>
<?= $this->section('content') ?>
<h2>Penambahan Data Masyarakat</h2>
<p>Silahkan gunakan form dibawah ini untuk mendata Masyarakat baru.</p>
<form method="POST" action="/masyarakat/simpan">
<div class="form-group">
<label class="font-weight-bold">Nik</label>
<input type="text" name="txtNik" class="form-control" placeholder="Masukan NIK" maxLength =16 autocomplete="off" autofocus>
</div>

<div class="form-group">
<label class="font-weight-bold">Nama Lengkap</label>
<input type="text" name="txtNama" class="form-control" placeholder="Masukan nama lengkap" autocomplete="off">
</div>

<div class="form-group">
<label class="font-weight-bold">Username</label>
<input type="text" name="txtUsername" class="form-control" placeholder="Masukan username" autocomplete="off">
</div>

<div class="form-group">
<label class="font-weight-bold">Password</label>
<input type="text" name="txtPassword" class="form-control" placeholder="Masukan password" autocomplete="off">
</div>

<div class="form-group">
<label class="font-weight-bold">No Telphone</label>
<input  type="tel" id="phone"  name="txtTlp" class="form-control" placeholder="Masukan no telphone" maxLength =12 autocomplete="off">
</div>

<div class="form-group">
<button class="btn btn-primary">Simpan</button>

</div>
</form>
<?= $this->endSection() ?>