<?php include 'app/View/header.php'; 

if(!isset($_GET['id']) OR !is_numeric($_GET['id']))
    header('Location: index.php');
else {
    extract($_GET);
    $id = strip_tags($id);
    require_once('app/Model/db.php');
    }
    $db = new db();
    $article = $db->getArticle($id);

?>
  <section class="container">
        <h1 class="text-center p-4"><?= $article->title ?></h1>
        <img class="img-fluid w-75 d-block mx-auto "src="<?= $article->img ?>" alt="">
        <p class="text-center"><?= $article->date ?></p>
        <p class="text-center"><?= $article->author ?></p>
    <p class="p-4 text-justify"><?= $article->content ?></p>
 </section>
     





<?php include 'app/View/footer.php'; ?>