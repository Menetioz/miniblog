<?php
class db {
    protected $bdd;

    public function __construct()
    {
       
        $this->bdd = new PDO('mysql:host=localhost;dbname=xxxxx;charset=utf8','xxxxx','xxxxx');
        $this->bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
    }
    //fonction qui recupere tout les article pour les afficher sur index.php
    function getArticlesForIndex() {
        $req = $this->bdd->prepare('SELECT * FROM articles ORDER BY id DESC');
        $req->execute();
        $data = $req->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $req->closeCursor();     
    }
    //fonction qui recupere un article dans la ndd
    function getArticle($id) {
        $req = $this->bdd->prepare('SELECT * FROM articles WHERE id = ?');
        $req->execute(array($id));
        if($req->rowCount() == 1) {
            $data = $req->fetch(PDO::FETCH_OBJ);
            return $data;
        } else {
            header('Location : index.php');
        }
        $req->closeCursor();
    }
    //fonction qui ajoute un commentaire dans la bdd
    function addComment($articleId, $author, $comment) {
        $req = $this->bdd->prepare('INSERT INTO comments (articleId, author, comment, date) VALUES
        (?, ?, ?, NOW()) ');
        $req->execute(array($articleId, $author, $comment));
        $req->closeCursor();
    }
}