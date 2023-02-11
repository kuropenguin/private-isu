-- mysql立ち上げ時にやっておきたい処理を書いておく
use isuconp;
ALTER TABLE comments ADD INDEX post_id_idx(post_id);

ALTER TABLE posts ADD INDEX posts_order_idx (created_at DESC);

ALTER TABLE comments ADD INDEX idx_user_id (user_id);

ALTER TABLE posts ADD INDEX posts_user_idx (user_id, created_at DESC);
