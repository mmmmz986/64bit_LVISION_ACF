# convert-to-ansi.ps1
# 현재 폴더 및 하위 폴더의 모든 .cpp/.h 파일을 ANSI(MBCS)로 변환

Write-Host "=== ANSI(MBCS) 인코딩 변환 시작 ==="

# 처리 대상 확장자
$extensions = "*.cpp","*.h"

foreach ($ext in $extensions) {
    Get-ChildItem -Recurse -Include $ext | ForEach-Object {
        Write-Host "변환 중: $($_.FullName)"

        # 파일 내용 읽기
        $content = Get-Content $_.FullName

        # ANSI(MBCS, 시스템 기본 코드 페이지)로 다시 저장
        Set-Content -Encoding Default $_.FullName $content
    }
}

Write-Host "=== 변환 완료: 모든 .cpp/.h 파일을 ANSI(MBCS)로 저장했습니다. ==="
