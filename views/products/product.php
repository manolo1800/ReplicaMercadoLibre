<?php while($pd=$product->fetch_object()):?>
    
            
            <?=$pd->Name?>
            <?=$pd->Price?>
        
            
<?php endwhile;?>
