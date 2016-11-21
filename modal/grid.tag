<grid>
    <table class="table">
        <thead>
            <th>label<th>
        </thead>
        <tbody>
            <tr each="{r in rows}">
                <th>{r.a}</th>
                <th><confirmButton label2="{r.b}" /></th>
            </tr>
        </tbody>
    </table>
    this.rows = [{ a:'abc', b:10},{a:'edf', b:11}]
</grid>
<confirmButton>

    <button type="button" class="btn btn-primary btn-sm" onclick="{confirmRevert}" data-toggle="modal" 
        data-transaction-id="{opts.label2}" data-target="#confirmModal">
       <span>Confirm</span> 
    </button>

    <div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <p id="displayTrId"></p>
                    <p>Are you sure to revert?</p>
                </div>
                <div class="modal-footer">
                   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> 
                   <button type="button" id="revertButton" value="" class="btn btn-primary" 
                        data-dismiss="modal" onclick="{revert}">Revert</button>
                </div>
            </div>
         </div>
    </div>

    confirmRevert(e) { 
        $(".modal-body #displayTrId").html(e.item.r.b)
    }

    revert(e){
        console.log(e)
    }
</confirmButton>
