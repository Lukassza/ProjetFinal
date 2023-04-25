<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230425113253 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE questions (id INT AUTO_INCREMENT NOT NULL, pseudo_id INT NOT NULL, categorie_id INT NOT NULL, texte VARCHAR(500) NOT NULL, INDEX IDX_8ADC54D520E394C2 (pseudo_id), INDEX IDX_8ADC54D5BCF5E72D (categorie_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE questions ADD CONSTRAINT FK_8ADC54D520E394C2 FOREIGN KEY (pseudo_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE questions ADD CONSTRAINT FK_8ADC54D5BCF5E72D FOREIGN KEY (categorie_id) REFERENCES categories (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE questions DROP FOREIGN KEY FK_8ADC54D520E394C2');
        $this->addSql('ALTER TABLE questions DROP FOREIGN KEY FK_8ADC54D5BCF5E72D');
        $this->addSql('DROP TABLE questions');
    }
}
