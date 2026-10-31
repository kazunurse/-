#!/bin/bash
# 全ファイルを「ビジキャン_全ファイル」フォルダにまとめて、ZIPを作る
cd "$(dirname "$0")/.." || exit 1
SRC="ビジネスキャンプ"; OUT="ビジキャン_全ファイル"
rm -rf "$OUT" "ビジネスキャンプ_全ファイルまとめ.zip"
mkdir -p "$OUT/1_アプリ" "$OUT/2_スライド" "$OUT/3_資料" "$OUT/4_表"
cp "$SRC/AIペルソナ審査アプリ.html" "$OUT/1_アプリ/"
cp "$SRC/ルール説明スライド.html" "$OUT/2_スライド/"
cp "$SRC/会議資料_AI旅行会社.html" "$SRC/AI旅行会社_全体の流れ.html" "$SRC/AI旅行会社_全体の流れ_文章版.md" "$SRC/引き継ぎメモ.md" "$SRC/旅行会社ゲーム_ルールと決めるゲーム.md" "$OUT/3_資料/"
cp "$SRC/ビジネスキャンプ_収支と決めること.xlsx" "$OUT/4_表/"
cp "$SRC/はじめに.html" "$OUT/はじめに（ここから開く）.html"
zip -qr "ビジネスキャンプ_全ファイルまとめ.zip" "$OUT"
echo done
