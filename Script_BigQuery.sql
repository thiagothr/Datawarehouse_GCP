
CREATE TABLE `case-gcp-426020.Projeto_GCP.Hackers` (
    hacker_id INT,
    Nome STRING

);


CREATE TABLE `case-gcp-426020.Projeto_GCP.Difficulty` (
    difficulty_level INT,
    score INT
);

CREATE TABLE `case-gcp-426020.Projeto_GCP.Challenge` (
    challenge_id INT,
    hacker_id INT,
    difficulty_level INT
   
);


CREATE TABLE `case-gcp-426020.Projeto_GCP.Submission` (
    submission_id INT,
    challenge_id INT,
    hacker_id INT,
    score INT
   
);


