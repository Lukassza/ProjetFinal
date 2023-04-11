<?php

namespace App\Controller\Admin;

use App\Entity\Videos;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class VideosCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Videos::class;
    }

   
    public function configureFields(string $pageName): iterable
    {
        return [
            
            TextField::new('titre'),
            TextField::new('lien'),
            
            ChoiceField::new('categorie')->setChoices([
                'gtfo' => '1',
                'lol' => '2',
            ])
            // https://stackoverflow.com/questions/53997251/symfony-forms-expected-argument-of-type-string-given-at-property-path
        ];
    }
    
}
