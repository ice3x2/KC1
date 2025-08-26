
# KC1 
작성중
![kc1_1](https://github.com/user-attachments/assets/64942d8b-203c-4bde-a683-5dbb7a1f0a8a)
![kc1_2](https://github.com/user-attachments/assets/aedd0996-3a2f-4ef3-aa75-b99f5597805d)



quantity 의 배열을 적용한 ZMK 기반 무선 스플릿 키보드.
차이점은, 오른쪽 스페이스 키 좌측에 `ㅠ`(B) 키가 있다. 따라서 스플릿 키보드에서도 모음 ㅠ가 들어간 글자를 타이핑하기가 편하다. 

## 재료 
- **3D 프린터**
- **스위치 박스**
	- 전원 스위치 x2 : [IMMS-12V / 스위치/부저/전기부품 > 스위치 > 슬라이드 스위치 / 디바이스마트](https://www.devicemart.co.kr/goods/view?no=2647) 
	- 리셋 스위치 x2 : [ITS-1107 Series(SMD) / 스위치/부저/전기부품 > 스위치 > Tact 스위치(SMD타입) / 디바이스마트](https://www.devicemart.co.kr/goods/view?no=2205)
- **USB-C 커넥터 가이드**
	- DIY USB C타입 4핀 PCB보드x2 : [DIY USB C타입 4핀 PCB보드 충전포트 전원 : 쉽다이](https://smartstore.naver.com/shipdiy/products/10542643450?NaPm=ct%3Dmerkaz5c%7Cci%3Dcheckout%7Ctr%3Dppc%7Ctrx%3Dnull%7Chk%3D7cfef2133abdea45baf0331b858747c238c7faed)
	![[Pasted image 20250826052134.png]]

	- USB-C 커넥터 x2
	  <img width="300" height="300" alt="image" src="https://github.com/user-attachments/assets/858e42ca-3931-496c-8169-0bc173befa5e" />

- **회로**
	- 컨트롤러: Nice!Nano V2 호환 보드 x2
	- 배터리: TW302030 x 2
	- 제너 다이오드 1N4148 x 71
	- 키보드 스위치 x 71
	- 래핑와이어
- **키보드 부품**
	- 체리호환 스테빌라이저: 4곳 필요. 
	- 키캡
- **기타**
    - 키보드 스위치 EVA 폼: [구입 링크](https://ko.aliexpress.com/item/1005009221379824.html?spm=a2g0o.detail.pcDetailTopMoreOtherSeller.1.2134trZAtrZAE5&gps-id=pcDetailTopMoreOtherSeller&scm=1007.40050.354490.0&scm_id=1007.40050.354490.0&scm-url=1007.40050.354490.0&pvid=6d987550-4e51-49b5-baaf-96646f0444db&_t=gps-id:pcDetailTopMoreOtherSeller,scm-url:1007.40050.354490.0,pvid:6d987550-4e51-49b5-baaf-96646f0444db,tpp_buckets:668%232846%238110%231995&pdp_ext_f=%7B%22order%22%3A%2210%22%2C%22eval%22%3A%221%22%2C%22sceneId%22%3A%2230050%22%7D&pdp_npi=6%40dis%21KRW%217776%211002%21%21%2138.88%215.01%21%40212e509017562369466848126ed5e7%2112000048361516631%21rec%21KR%21%21ABXZ%211%210%21n_tag%3A-29910%3Bd%3A3bcb6008%3Bm03_new_user%3A-29895%3BpisId%3A5000000176755829&utparam-url=scene%3ApcDetailTopMoreOtherSeller%7Cquery_from%3A%7Cx_object_id%3A1005009221379824%7C_p_origin_prod%3A)
    - 자석 커넥터: [구입 링크](https://ko.aliexpress.com/item/1005009144574590.html?spm=a2g0o.productlist.main.60.79f9pGRnpGRnA0&aem_p4p_detail=202508261230231994256655471520000740910&algo_pvid=e8e28eca-b652-444e-b2ee-b0fd0b0f051c&algo_exp_id=e8e28eca-b652-444e-b2ee-b0fd0b0f051c-59&pdp_ext_f=%7B%22order%22%3A%223%22%2C%22eval%22%3A%221%22%7D&pdp_npi=6%40dis%21KRW%216546%215920%21%21%214.58%214.14%21%402101246417562366230303365ecb57%2112000048111948300%21sea%21KR%210%21ABX%211%210%21n_tag%3A-29910%3Bd%3A3bcb6008%3Bm03_new_user%3A-29895&curPageLogUid=ufCZdQNuru1O&utparam-url=scene%3Asearch%7Cquery_from%3A%7Cx_object_id%3A1005009144574590%7C_p_origin_prod%3A&search_p4p_id=202508261230231994256655471520000740910_15)
    - 원형 네오디움 자석: 6mmx2mm 이하 사이즈 (조금 더 작은 사이즈로 준비 추천)
- **볼트/너트**
	- 원기둥 모양 황동 PCB서포트 10mm: [지지대볼트 PCB서포트 황동 M2 Female 10mm DM4531 : 도매키트](https://smartstore.naver.com/domekit/products/8022833626?NaPm=ct%3Dmerkqzhm%7Cci%3Dcheckout%7Ctr%3Dppc%7Ctrx%3Dnull%7Chk%3D7aed125db1f35ef28b2ab52542da6cf05032166c)
	- m2-10 볼트: [볼트 너트 나사 니켈도금 십자 둥근머리볼트 니켈 m2-03 65개 : 볼트몰](https://smartstore.naver.com/boltmall/products/7066715490?NaPm=ct%3Dmerkwk62%7Cci%3Dcheckout%7Ctr%3Dppc%7Ctrx%3Dnull%7Chk%3D0ffef8f8fcb36720c65260d20dcdb451f93155f8)
	- m1.4-10 볼트와 너트(스위치 박스 및 USB가이드 고정용)
- **순간 접착제**
	- 분할 인쇄된 오른쪽 키보드 부착용
- **B7000 접착제**
	- 스위치 부착 고정용
 


## 초기화 및 빌드 

KC1 ZMK 펌웨어를 빌드하기 위해서는 WSL2 환경에서 다음 과정을 수행합니다.

### 1. WSL2 및 필수 패키지 설치
Ubuntu WSL2 환경에서 다음을 실행합니다.

```bash
sudo apt update
sudo apt install -y \
  git cmake ninja-build gperf ccache dfu-util device-tree-compiler wget \
  python3 python3-venv python3-pip pipx
````

> `pipx` 실행이 되지 않으면 PATH를 보강합니다.
>
> ```bash
> echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
> source ~/.bashrc
> ```

### 2. pipx로 west 및 wheel 설치

ZMK는 `west`라는 메타 빌드 도구를 사용합니다.

```bash
pipx install west
pipx runpip west install --upgrade pip wheel
```

### 3. ZMK 초기화

레포지토리 루트에서 `zmk` 디렉토리로 이동 후 초기화 스크립트를 실행합니다.

```bash
cd zmk
./init.sh
```

### 4. Zephyr Python 의존성 설치

Zephyr 스크립트에서 요구하는 패키지를 설치합니다.

```bash
pipx runpip west install -r ./zephyr/scripts/requirements.txt
```

### 5. 빌드

이제 어떤 디렉토리에서든 실행 가능합니다.

```bash
./zmk/app/build.sh
```

생성물:

* `zmk/app/zmk_left.uf2`
* `zmk/app/zmk_right.uf2`

```
