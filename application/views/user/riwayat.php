<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Riwayat</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
</head>
<body>
    <h3>Riwayat Diagnosa</h3>
    <h4>Riwayat Penyakit (<strong><?php echo $this->session->userdata('nama')?></strong>)</h4>
    <table border="1">
        <thead>
            <tr>
                <th>Nama Gejala</th>
                <th>Tanggal</th>
            </tr>
        </thead>
        <tbody>
            <?php $no; foreach($listHistory as $list):?>
                <tr>
                    <td><?php echo $list['nama_gejala'] ?></td>
                    <td><?php echo $list['created_at'] ?></td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
<hr>
    <table border="1">
        <thead>
            <tr>
                <th>Hasil Diagnosa</th>
                <th>Nama Penyakit</th>
                <th>Nilai</th>
                <th>Keterangan</th>
                <th>Waktu</th>
            </tr>
        </thead>
        <tbody>
            <?php $no; foreach($listHasil as $list):?>
                <tr>
                    <td><?php echo $list['kode'] ?></td>
                    <td><?php echo $list['nama'] ?></td>
                    <td><?php echo $list['kepercayaan'] ?></td>
                    <td><?php echo $list['keterangan'] ?></td>
                    <td><?php echo $list['created_at'] ?></td>
                </tr>
            <?php endforeach ?>

        </tbody>
    </table>
   
</body>
</html>