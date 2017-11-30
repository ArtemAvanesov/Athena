<textarea id="textarea" name="description" style="display:none"></textarea> 
<div id="div" class="textarea" contenteditable="">редактируемый текст</div>
<div id="div" class="textarea" contenteditable="">редактируемый текст</div>
<div id="div" class="textarea" contenteditable="">редактируемый текст</div>

<script>
    $(function(){
        $(".textarea").on('blur', function(){
            $("#textarea").val($(this).text());
        });
    })
</script>