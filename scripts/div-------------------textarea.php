<textarea id="textarea" name="description" style="display:none"></textarea> 
<div id="div" class="textarea" contenteditable="">������������� �����</div>
<div id="div" class="textarea" contenteditable="">������������� �����</div>
<div id="div" class="textarea" contenteditable="">������������� �����</div>

<script>
    $(function(){
        $(".textarea").on('blur', function(){
            $("#textarea").val($(this).text());
        });
    })
</script>