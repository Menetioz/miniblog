<?php include 'app/View/header.php';
require_once('app/Model/db.php');
$db = new db();
$articles = $db->getArticlesForIndex();
?>


<section class="container">
    <h1 class="text-center">Articles</h1>
    <div class="row">
        <?php foreach($articles as $article): ?>
        <div class="col-xs-1 p-4 w-50">

            <h3><?= $article->title ?></h3>
            <img class="img-fluid shadow-sm" src="<?= $article->img ?>" alt="">
            <time><?= $article->date ?></time>
            <p><?= substr($article->content, 0, 50);?></p>
            <br><br>
            <a href="article.php?id=<?= $article->id; ?>">Lire la suite</a>
        </div>
    <?php endforeach; ?>
    </div>
</section>


<?php include 'app/View/footer.php'; ?>