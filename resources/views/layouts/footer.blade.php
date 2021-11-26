</div>
<!-- /.content-wrapper -->
<footer class="main-footer">
    <strong>Copyright &copy; 2020-{{date('Y')}} <a href="https://parjatan.visualsofts.com/">{{$appTitle}}</a>.</strong> All rights reserved.
</footer>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
<input type="hidden" id="userDateFormat" value="{{str_replace(["Y",'d','m'],["yy",'dd','mm'],config('settings')['date_format']) }}">
@include('layouts.footer_script')


</body>
</html>
