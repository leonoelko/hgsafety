#!/bin/bash
cd "$(dirname "$0")"

echo "📦 파일 복사 중..."
cp ~/Downloads/hgtop-safety-checklist_2.html index.html

echo "🔄 GitHub에 업로드 중..."
git add .
git commit -m "업데이트 $(date '+%Y-%m-%d %H:%M')"
git push

echo ""
echo "✅ 완료! Netlify에 자동 배포됩니다."
echo "   약 1분 후 https://hgsafety.netlify.app 에서 확인하세요."
echo ""
read -p "엔터를 누르면 창이 닫힙니다..."
