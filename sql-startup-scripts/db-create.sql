CREATE TABLE Articles (
  id               int(10) NOT NULL AUTO_INCREMENT, 
  title            varchar(255) NOT NULL, 
  timeScraped      timestamp NOT NULL, 
  datePublished    date NOT NULL, 
  articlePlaintext blob NOT NULL, 
  hyperlink        varchar(255) NOT NULL UNIQUE, 
  sourceID         int(10) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE ArticleTopics (
  id        int(10) NOT NULL AUTO_INCREMENT, 
  articleID int(10) NOT NULL, 
  topicID   int(10) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Countries (
  id           int(10) NOT NULL AUTO_INCREMENT, 
  abbreviation char(3) NOT NULL UNIQUE, 
  name         varchar(255) NOT NULL UNIQUE, 
  PRIMARY KEY (id));
CREATE TABLE Sources (
  id        int(10) NOT NULL AUTO_INCREMENT, 
  name      varchar(255) NOT NULL, 
  countryID int(10) NOT NULL, 
  hyperlink int(10) NOT NULL UNIQUE, 
  PRIMARY KEY (id));
CREATE TABLE Topics (
  id    int(10) NOT NULL AUTO_INCREMENT, 
  topic varchar(255) NOT NULL, 
  PRIMARY KEY (id), 
  UNIQUE INDEX (topic));
ALTER TABLE Articles ADD CONSTRAINT FKArticles874086 FOREIGN KEY (sourceID) REFERENCES Sources (id);
ALTER TABLE Sources ADD CONSTRAINT FKSources69233 FOREIGN KEY (countryID) REFERENCES Countries (id);
ALTER TABLE ArticleTopics ADD CONSTRAINT FKArticleTop283954 FOREIGN KEY (topicID) REFERENCES Topics (id);
ALTER TABLE ArticleTopics ADD CONSTRAINT FKArticleTop421756 FOREIGN KEY (articleID) REFERENCES Articles (id);