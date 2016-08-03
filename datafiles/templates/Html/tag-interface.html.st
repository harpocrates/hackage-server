<!DOCTYPE html>
<html>
<head>
  $hackageCssTheme()$
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
  <title>All packages by name | Hackage</title>
</head>

<body>
  $hackagePageHeader()$

  <div id="content">
    <h2>$heading$</h2>

  $content$

    <table id ="table" style="width:650" class = "fancy">
      <thead>
        <tr>
            <th><div style="width:100px">Name</div></th>
            <th><div style="width:40px">DLs</div></th>
            <th><div style="width:50px">Score</div></th>
            <th><div style="width:160px">Description</div></th>
            <th><div style="width:50px">RDeps</div></th>
            <th><div style="width:140px">Tags</div></th>
            <th><div style="width:100px">Maintainer</div></th>
        </tr>
      </thead>
      <tbody>
        $tabledata$
      </tbody>
    </table>

  </div>
  <script>
    function filterGlobal () {
      \$('#table').DataTable().search(
        true, true
        ).draw();
    }

    \$(document).ready(function() {
      \$('#table').removeAttr('width').DataTable({
        "bProcessing": true,
        "bDeferRender": true,
        "autoWidth": false
      });

      \$('input.global_filter').on( 'keyup click', function () {
        filterGlobal();
      } );

    } );
  </script>
</body></html>