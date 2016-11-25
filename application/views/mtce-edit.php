<h2>Menu Maintenance - {action} </h2>
<form action="/Maintenance/save" method="post" enctype="multipart/form-data">
    {fid}
    {fname}
    {fdescription}
    {fprice}
    {fpicture}
    <div class="form-group">
        <label for="replacement">Replacement picture</label>
        <input type="file" id="replacement" name="replacement"/>
    </div>
    {fcategory}
    {zsubmit}
    <a class="btn btn-default" role="button" href="/Maintenance/cancel">Cancel</a>
    <a class="btn btn-default" role="button" href="/Maintenance/delete">Delete</a>
</form>
