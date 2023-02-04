-- mysql立ち上げ時にやっておきたい処理を書いておく
use isuconp;
ALTER TABLE comments ADD INDEX post_id_idx(post_id);

ALTER TABLE posts ADD INDEX posts_order_idx (created_at DESC);
