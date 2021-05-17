<?php
            $liqry = $con->prepare("SELECT name, description FROM category WHERE  active = 1;");
            if ($liqry === false) {
                trigger_error(mysqli_error($con));
            } else {
                // $liqry->bind_param('s', $categoryName, $categoryDescription);
                $liqry->bind_result($categoryName, $categoryDescription);
                if ($liqry->execute()) {
                    $liqry->store_result();
                    while ($liqry->fetch()) {
            ?>
                        <article class="article-category">
                            <h3><?php echo $categoryName ?></h3>
                            <div><?php echo $categoryDescription  ?> </div>
                        </article>
            <?php
                    }
                }
                $liqry->close();
            }
            ?>