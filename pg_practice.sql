-- 問題1. postgresqlでpracticeデータベースを生成するSQL文を記述してください。
CREATE DATABASE practice;

-- 問題2. postgresqlでpracticeデータベースのusersテーブルを生成するSQL文を記述してください。
id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL DEFAULT '' /* 氏名 */,
  age INT NOT NULL DEFAULT 0 /* 年齢 */,
  gender TEXT CHECK (gender IN ('Man', 'Woman', 'Other')) NOT NULL DEFAULT 'Other' /* 性別 */
);

-- 問題3. postgresqlでpracticeデータベースのjobsテーブルを生成するSQL文を記述してください。
CREATE TABLE jobs (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  name VARCHAR(255) NOT NULL DEFAULT '会社員' /* 仕事名 */,
  CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);