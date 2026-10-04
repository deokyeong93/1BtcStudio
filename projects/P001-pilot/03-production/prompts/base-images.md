# 첫 장면 이미지 (Image-to-Video용)

> 작성: 도윤(촬영감독), 2026-10-04. 근거: [2단계 회의록](../../meetings/2026-10-04-preproduction-look.md), [레퍼런스 시트 v1](../../02-preproduction/character-sheets/reference-sheet.md)

## 공통 규칙
- 툴: higgsfield.ai → Image → 모델 **Soul**, 비율 16:9. Soul ID 칸에 적힌 샷만 그 캐릭터를 고릅니다.
- 이미지 하나에 Soul ID는 1명만 씁니다. 여러 명을 함께 고를 수 있는지는 확인이 필요합니다. 나머지 인물은 고정 설명문으로만 그립니다. CCTV 와이드라 얼굴이 작아서 이 정도로 충분합니다.
- 방 이미지(R1~R5)를 먼저 만들고 서아에게 검수를 받습니다. 그다음 B 이미지는 해당 R을 **참고 이미지(reference)**로 올려 만듭니다. 방 배치는 R에서 고정합니다.
- `[prop-...]` 자리에는 서아가 만들 소품 고정 설명문을 한 글자도 바꾸지 않고 붙입니다. 붙이기 전에는 생성하지 않습니다.
- 천장 CCTV(CAM-A)는 문에서 본 좌우와 화면 좌우가 반대입니다. 그래서 프롬프트 끝에 화면 기준 위치를 덧붙였습니다. R1에서 창이 화면 오른쪽, 문이 안쪽 벽 왼쪽에 나와야 합니다.
- 영상 단계에서 Soul ID를 한 번 더 고를지(@ Elements)는 모델이 지원하는지 확인이 필요합니다. 지원하지 않으면 첫 장면 이미지의 얼굴로 갑니다.
- 저장 이름: `P001_base_R1_v1.png`, `P001_base_B05_v1.png` 식으로 저장합니다.

## 방 이미지 (사람 없음)

### R1 — CAM-A 천장 CCTV, 낮 (참고 이미지 없음, Soul ID 없음)
```
Still frame from a fixed ceiling-mounted CCTV security camera, high angle from the back-right corner of the room looking toward the door wall, wide shot, 16:9. Empty room, no people.
interview-room: small, slightly worn Korean IT company meeting room, white walls, ceiling fluorescent panels. Grey desk near the door wall, two black office chairs behind it with backs to the door; one applicant chair facing the desk. Window with white blinds on one side wall. Door in the door-wall corner farthest from the window, CCTV above it.
light-day: flat cool-white overhead fluorescent light with a slight green tint, even and nearly shadowless, window blinds half closed showing dull grey daylight, no direct sunlight in the room, muted colors on white walls and grey desk
From this camera the window wall appears on the right side of the frame and the door appears at the left of the far wall; the applicant chair is in the foreground with its back to the camera, the desk and two interviewer chairs are beyond it.
Low-resolution security camera image, slight digital noise, mild compression artifacts, cool fluorescent color cast, no on-screen text, no timestamp.
```
설명: 천장 CCTV에서 본 빈 면접실(낮)입니다. 모든 CAM-A 이미지의 배치 기준이 됩니다.

### R2 — CAM-A, 오후 (참고 R1)
R1 프롬프트에서 `light-day: ...` 문단만 아래로 바꿉니다.
```
light-afternoon: warm low afternoon sunlight entering through the side-wall window blinds, soft striped light patches across the desk and floor, fluorescent panels still on, rest of the room stays cool white, not golden or cinematic
```
설명: R1과 같은 방에 오후 햇빛 줄무늬가 든 버전입니다.

### R3 — CAM-A, 노을 (참고 R1)
R1 프롬프트에서 `light-day: ...` 문단만 아래로 바꿉니다.
```
light-dusk: orange-pink sunset glow from the side-wall window, a long band of orange light across the white wall, fluorescent panels on but weaker, room getting dim, blue-grey shadows gathering in the corners
```
설명: R1과 같은 방에 노을빛이 든 버전입니다.

### R4 — CAM-B 문 위 CCTV, 오후 (참고 R2)
```
Still frame from a fixed CCTV security camera mounted above the door, high angle looking into the room toward the applicant chair, medium-wide shot, 16:9. Empty room, no people.
interview-room: small, slightly worn Korean IT company meeting room, white walls, ceiling fluorescent panels. Grey desk near the door wall, two black office chairs behind it with backs to the door; one applicant chair facing the desk. Window with white blinds on one side wall. Door in the door-wall corner farthest from the window, CCTV above it.
light-afternoon: warm low afternoon sunlight entering through the side-wall window blinds, soft striped light patches across the desk and floor, fluorescent panels still on, rest of the room stays cool white, not golden or cinematic
From this camera the window wall is on the left side of the frame; the applicant chair faces the camera in the middle of the frame; the interviewer desk is below the bottom edge of the frame and not visible.
Security camera image, clean and unusually sharp, very little noise, no on-screen text, no timestamp.
```
설명: 문 위에서 지원자 의자를 정면으로 본 빈 방입니다. 씬 5 전용이고 노이즈를 적게 둡니다.

### R5 — CAM-C 책상 고정캠, 오후 (참고 R2)
```
Still frame from a small fixed desk camera clipped to the interviewer-side edge of the desk between the two interviewer seats, looking down at the grey desk top toward the applicant side, close insert, 16:9. Empty desk top, no people, no objects.
interview-room: small, slightly worn Korean IT company meeting room, white walls, ceiling fluorescent panels. Grey desk near the door wall, two black office chairs behind it with backs to the door; one applicant chair facing the desk. Window with white blinds on one side wall. Door in the door-wall corner farthest from the window, CCTV above it.
light-afternoon: warm low afternoon sunlight entering through the side-wall window blinds, soft striped light patches across the desk and floor, fluorescent panels still on, rest of the room stays cool white, not golden or cinematic
Low-resolution webcam-like security image, slight digital noise, mild compression artifacts, no on-screen text, no timestamp.
```
설명: 책상 고정캠이 내려다본 빈 책상 위입니다. 인서트 이미지 B07, B08, B09, B16의 기준입니다.

## 샷별 첫 장면 이미지

### B01 → S01 (참고 R1, Soul ID: sanggu)
```
Still frame from a fixed ceiling-mounted CCTV security camera, high angle from the back-right corner of the room looking toward the door wall, wide shot, 16:9.
sanggu: Korean man, 41, chubby round build, soft round face, thick black round-frame glasses, messy short black hair sticking up at the crown, kind droopy eyes, small mole on his left cheekbone below the glasses, wrinkled light blue oxford shirt, no tie, right shirttail untucked, unbuttoned beige cotton blazer with sleeves pushed up, dark grey slacks, brown shoes
manseok: Korean man, mid-50s, ordinary executive, shown only from behind, in side profile, or as hands, face never in focus, upright posture, neatly combed-back hair streaked with grey, dark navy suit, white shirt, plain dark grey tie, silver metal wristwatch on left wrist, short clean fingernails
applicant: blurred out-of-focus young Korean job applicant seated upright in the single chair facing the interview desk, back and shoulders toward camera, face not visible, short dark hair, plain forest green blazer over a white shirt, dark trousers, same pose and chair position every time
sanggu sits behind the desk facing the camera, small in the frame, half-reclined in his chair, a pen in his right hand, an open resume on the desk in front of him. manseok sits upright at the other end of the desk, angled so he is seen in side profile.
interview-room: small, slightly worn Korean IT company meeting room, white walls, ceiling fluorescent panels. Grey desk near the door wall, two black office chairs behind it with backs to the door; one applicant chair facing the desk. Window with white blinds on one side wall. Door in the door-wall corner farthest from the window, CCTV above it.
light-day: flat cool-white overhead fluorescent light with a slight green tint, even and nearly shadowless, window blinds half closed showing dull grey daylight, no direct sunlight in the room, muted colors on white walls and grey desk
From this camera the window wall appears on the right side of the frame and the door at the left of the far wall; sanggu sits on the frame-right side of the desk, manseok at the frame-left end.
Low-resolution security camera image, slight digital noise, mild compression artifacts, cool fluorescent color cast, no on-screen text, no timestamp.
```
설명: 지원자1(초록)이 앞에 흐리게 있고, 대표는 반쯤 기댔으며, 이사는 옆모습인 낮 CCTV 화면입니다.

### B02 → S02 (B01 이미지 편집, 참고 B01)
```
Same image as the reference, identical in every detail. Change only the applicant's blazer color.
applicant: blurred out-of-focus young Korean job applicant seated upright in the single chair facing the interview desk, back and shoulders toward camera, face not visible, short dark hair, plain burgundy blazer over a white shirt, dark trousers, same pose and chair position every time
```
설명: B01에서 지원자 상의만 버건디로 바꿉니다. 이미지 편집 메뉴 이름은 확인이 필요합니다. 안 되면 B01을 쓰고 색은 CapCut에서 바꿉니다.

### B03 → S03 (B01 이미지 편집, 참고 B01)
```
Same image as the reference, identical in every detail. Change only the applicant's blazer color.
applicant: blurred out-of-focus young Korean job applicant seated upright in the single chair facing the interview desk, back and shoulders toward camera, face not visible, short dark hair, plain cobalt blue blazer over a white shirt, dark trousers, same pose and chair position every time
```
설명: B01에서 지원자 상의만 코발트 파랑으로 바꿉니다.

### B04 → S04 (참고 R2, Soul ID: sanggu)
```
Still frame from a fixed ceiling-mounted CCTV security camera, high angle from the back-right corner of the room looking toward the door wall, wide shot, 16:9.
sanggu: Korean man, 41, chubby round build, soft round face, thick black round-frame glasses, messy short black hair sticking up at the crown, kind droopy eyes, small mole on his left cheekbone below the glasses, wrinkled light blue oxford shirt, no tie, right shirttail untucked, unbuttoned beige cotton blazer with sleeves pushed up, dark grey slacks, brown shoes
manseok: Korean man, mid-50s, ordinary executive, shown only from behind, in side profile, or as hands, face never in focus, upright posture, neatly combed-back hair streaked with grey, dark navy suit, white shirt, plain dark grey tie, silver metal wristwatch on left wrist, short clean fingernails
The applicant chair in the foreground is empty. sanggu sits behind the desk facing the camera, small in the frame. manseok sits upright at the other end of the desk in side profile. The door is closed.
interview-room: small, slightly worn Korean IT company meeting room, white walls, ceiling fluorescent panels. Grey desk near the door wall, two black office chairs behind it with backs to the door; one applicant chair facing the desk. Window with white blinds on one side wall. Door in the door-wall corner farthest from the window, CCTV above it.
light-afternoon: warm low afternoon sunlight entering through the side-wall window blinds, soft striped light patches across the desk and floor, fluorescent panels still on, rest of the room stays cool white, not golden or cinematic
From this camera the window wall appears on the right side of the frame and the door at the left of the far wall; sanggu sits on the frame-right side of the desk, manseok at the frame-left end.
Low-resolution security camera image, slight digital noise, mild compression artifacts, cool fluorescent color cast, no on-screen text, no timestamp.
```
설명: 지원자 의자가 비어 있고 문이 닫힌 오후 CCTV 화면입니다. 신입이 들어오기 직전입니다.

### B05 → S05 (참고 R4, Soul ID: eunsol, 시도 4회 예상)
```
Still frame from a fixed CCTV security camera mounted above the door, high angle looking into the room toward the applicant chair, medium-wide shot, 16:9.
eunsol: Korean woman, 25, slim, straight black hair in a tight mid-height ponytail to her shoulder blades, no bangs, long eyes with subtle inner double eyelids, straight dark eyebrows, tiny mole above her right eyebrow tail, light natural makeup, white round-neck blouse, charcoal suit jacket and trousers, black shoulder bag, small black notebook, black loafers
eunsol stands in front of the applicant chair facing the camera, both hands gripping her shoulder bag strap, slightly tense shoulders, face clearly visible. No other people in the frame.
interview-room: small, slightly worn Korean IT company meeting room, white walls, ceiling fluorescent panels. Grey desk near the door wall, two black office chairs behind it with backs to the door; one applicant chair facing the desk. Window with white blinds on one side wall. Door in the door-wall corner farthest from the window, CCTV above it.
light-afternoon: warm low afternoon sunlight entering through the side-wall window blinds, soft striped light patches across the desk and floor, fluorescent panels still on, rest of the room stays cool white, not golden or cinematic
From this camera the window wall is on the left side of the frame; the interviewer desk is below the bottom edge of the frame and not visible.
Security camera image, clean and unusually sharp, very little noise, natural colors, no on-screen text, no timestamp.
```
설명: 문 위 CCTV에서 본 신입 정면입니다. 이 작품에서 얼굴이 가장 잘 보이는 장면이라 가장 공들여 만듭니다.

### B06 → S06, S10 (참고 R2, Soul ID: sanggu)
```
Still frame from a fixed ceiling-mounted CCTV security camera, high angle from the back-right corner of the room looking toward the door wall, wide shot, 16:9.
eunsol: Korean woman, 25, slim, straight black hair in a tight mid-height ponytail to her shoulder blades, no bangs, long eyes with subtle inner double eyelids, straight dark eyebrows, tiny mole above her right eyebrow tail, light natural makeup, white round-neck blouse, charcoal suit jacket and trousers, black shoulder bag, small black notebook, black loafers
sanggu: Korean man, 41, chubby round build, soft round face, thick black round-frame glasses, messy short black hair sticking up at the crown, kind droopy eyes, small mole on his left cheekbone below the glasses, wrinkled light blue oxford shirt, no tie, right shirttail untucked, unbuttoned beige cotton blazer with sleeves pushed up, dark grey slacks, brown shoes
manseok: Korean man, mid-50s, ordinary executive, shown only from behind, in side profile, or as hands, face never in focus, upright posture, neatly combed-back hair streaked with grey, dark navy suit, white shirt, plain dark grey tie, silver metal wristwatch on left wrist, short clean fingernails
eunsol sits upright in the applicant chair, seen from behind at a three-quarter angle, ponytail clearly visible, mouth not visible, about one fifth of the frame height, her open notebook on the near edge of the desk and a black pen in her right hand. sanggu sits behind the desk facing her, small in the frame. manseok sits upright at the other end of the desk in side profile.
interview-room: small, slightly worn Korean IT company meeting room, white walls, ceiling fluorescent panels. Grey desk near the door wall, two black office chairs behind it with backs to the door; one applicant chair facing the desk. Window with white blinds on one side wall. Door in the door-wall corner farthest from the window, CCTV above it.
light-afternoon: warm low afternoon sunlight entering through the side-wall window blinds, soft striped light patches across the desk and floor, fluorescent panels still on, rest of the room stays cool white, not golden or cinematic
From this camera the window wall appears on the right side of the frame and the door at the left of the far wall; sanggu sits on the frame-right side of the desk, manseok at the frame-left end.
Low-resolution security camera image, slight digital noise, mild compression artifacts, cool fluorescent color cast, no on-screen text, no timestamp.
```
설명: 신입이 지원자 의자에 비스듬한 뒷모습으로 작게 앉아 있는 면접 화면입니다. S10(벌떡 일어남)에도 다시 씁니다.

### B07 → S07 (참고 R5, Soul ID 없음)
```
Still frame from a small fixed desk camera clipped to the interviewer-side edge of the desk, looking down at the grey desk top toward the applicant side, close insert, 16:9.
eunsol: Korean woman, 25, slim, straight black hair in a tight mid-height ponytail to her shoulder blades, no bangs, long eyes with subtle inner double eyelids, straight dark eyebrows, tiny mole above her right eyebrow tail, light natural makeup, white round-neck blouse, charcoal suit jacket and trousers, black shoulder bag, small black notebook, black loafers
Only eunsol's right hand and charcoal sleeve are visible at the far edge of the desk, holding a black pen over her open small black notebook, face not in frame.
light-afternoon: warm low afternoon sunlight entering through the side-wall window blinds, soft striped light patches across the desk and floor, fluorescent panels still on, rest of the room stays cool white, not golden or cinematic
Low-resolution webcam-like security image, slight digital noise, mild compression artifacts, no on-screen text, no timestamp.
```
설명: 책상 건너편 끝에서 신입의 손이 펜을 쥐고 수첩 위에 있는 인서트입니다.

### B08 → S08 (참고 R5, Soul ID 없음)
```
Still frame from a small fixed desk camera clipped to the interviewer-side edge of the desk, looking down at the grey desk top, close insert, 16:9.
sanggu: Korean man, 41, chubby round build, soft round face, thick black round-frame glasses, messy short black hair sticking up at the crown, kind droopy eyes, small mole on his left cheekbone below the glasses, wrinkled light blue oxford shirt, no tie, right shirttail untucked, unbuttoned beige cotton blazer with sleeves pushed up, dark grey slacks, brown shoes
prop-printout: a single white A4 sheet in portrait orientation printed with black monospaced computer code in small, unreadable type, lines aligned in clear stepped indentation blocks that form a visible staircase pattern along the left margin, wide white right margin, no color, no logo, slightly creased from handling
Only sanggu's right hand and forearm with the pushed-up beige blazer sleeve are visible, entering from the bottom-left of the frame, index finger resting on the top lines of the printout, face not in frame.
light-afternoon: warm low afternoon sunlight entering through the side-wall window blinds, soft striped light patches across the desk and floor, fluorescent panels still on, rest of the room stays cool white, not golden or cinematic
Low-resolution webcam-like security image, slight digital noise, mild compression artifacts, no on-screen text, no timestamp.
```
설명: 과제 코드 출력물 맨 윗줄에 대표 검지가 놓인 인서트입니다.

### B09 → S09 (참고 R5, Soul ID 없음)
```
Still frame from a small fixed desk camera clipped to the interviewer-side edge of the desk, tilted down over the near edge of the desk to look at the two interviewers' laps under the desk, close insert, 16:9.
manseok: Korean man, mid-50s, ordinary executive, shown only from behind, in side profile, or as hands, face never in focus, upright posture, neatly combed-back hair streaked with grey, dark navy suit, white shirt, plain dark grey tie, silver metal wristwatch on left wrist, short clean fingernails
sanggu: Korean man, 41, chubby round build, soft round face, thick black round-frame glasses, messy short black hair sticking up at the crown, kind droopy eyes, small mole on his left cheekbone below the glasses, wrinkled light blue oxford shirt, no tie, right shirttail untucked, unbuttoned beige cotton blazer with sleeves pushed up, dark grey slacks, brown shoes
prop-note: a palm-sized white memo slip torn from a notepad, folded once in half, lying flat, blank matte outer side facing up with no lines, print, or logo, one crisp crease, slightly uneven torn top edge
The grey desk edge runs across the top of the frame. Below it, sanggu's dark grey slacks are on the frame-left and manseok's dark navy suit trousers on the frame-right. manseok's left hand with the silver wristwatch rests on his knee holding the folded note. No faces in frame.
light-afternoon: warm low afternoon sunlight entering through the side-wall window blinds, soft striped light patches across the desk and floor, fluorescent panels still on, rest of the room stays cool white, not golden or cinematic
Low-resolution webcam-like security image, slight digital noise, mild compression artifacts, dim under the desk, no on-screen text, no timestamp.
```
설명: 책상 모서리 아래로 두 사람의 무릎이 보이고, 이사의 왼손이 쪽지를 쥐고 있습니다.

### B11 → S11 (참고 R2, Soul ID 없음)
```
Still frame from a fixed ceiling-mounted CCTV security camera, high angle from the back-right corner of the room looking toward the door wall, wide shot, 16:9.
sanggu: Korean man, 41, chubby round build, soft round face, thick black round-frame glasses, messy short black hair sticking up at the crown, kind droopy eyes, small mole on his left cheekbone below the glasses, wrinkled light blue oxford shirt, no tie, right shirttail untucked, unbuttoned beige cotton blazer with sleeves pushed up, dark grey slacks, brown shoes
prop-printout: a single white A4 sheet in portrait orientation printed with black monospaced computer code in small, unreadable type, lines aligned in clear stepped indentation blocks that form a visible staircase pattern along the left margin, wide white right margin, no color, no logo, slightly creased from handling
sanggu stands alone by the window, his back and right side toward the camera, holding the printout in both hands. The desk and chairs are empty.
interview-room: small, slightly worn Korean IT company meeting room, white walls, ceiling fluorescent panels. Grey desk near the door wall, two black office chairs behind it with backs to the door; one applicant chair facing the desk. Window with white blinds on one side wall. Door in the door-wall corner farthest from the window, CCTV above it.
light-afternoon: warm low afternoon sunlight entering through the side-wall window blinds, soft striped light patches across the desk and floor, fluorescent panels still on, rest of the room stays cool white, not golden or cinematic
From this camera the window wall appears on the right side of the frame and the door at the left of the far wall; sanggu stands at the window on the frame-right side.
Low-resolution security camera image, slight digital noise, mild compression artifacts, cool fluorescent color cast, no on-screen text, no timestamp.
```
설명: 면접이 끝난 빈 방에서 창가에 선 대표의 뒷모습입니다.

### B12 → S12 (참고 R2, Soul ID: sanggu)
```
Still frame from a fixed ceiling-mounted CCTV security camera, high angle from the back-right corner of the room looking toward the door wall, wide shot, 16:9.
sanggu: Korean man, 41, chubby round build, soft round face, thick black round-frame glasses, messy short black hair sticking up at the crown, kind droopy eyes, small mole on his left cheekbone below the glasses, wrinkled light blue oxford shirt, no tie, right shirttail untucked, unbuttoned beige cotton blazer with sleeves pushed up, dark grey slacks, brown shoes
eunsol: Korean woman, 25, slim, straight black hair in a tight mid-height ponytail to her shoulder blades, no bangs, long eyes with subtle inner double eyelids, straight dark eyebrows, tiny mole above her right eyebrow tail, light natural makeup, white round-neck blouse, charcoal suit jacket and trousers, black shoulder bag, small black notebook, black loafers
prop-phone-eunsol: a slim smartphone in a smooth pale lavender silicone case, small round camera lenses in the top-left corner of the back, no logo, no stickers, no charms, front is black glass with thin bezels
sanggu and eunsol stand facing each other in front of the desk. sanggu faces the camera, small in the frame, holding eunsol's phone out with both hands. eunsol is seen from behind at a three-quarter angle, ponytail visible. The door at the far wall stands open.
interview-room: small, slightly worn Korean IT company meeting room, white walls, ceiling fluorescent panels. Grey desk near the door wall, two black office chairs behind it with backs to the door; one applicant chair facing the desk. Window with white blinds on one side wall. Door in the door-wall corner farthest from the window, CCTV above it.
light-afternoon: warm low afternoon sunlight entering through the side-wall window blinds, soft striped light patches across the desk and floor, fluorescent panels still on, rest of the room stays cool white, not golden or cinematic
From this camera the window wall appears on the right side of the frame and the open door at the left of the far wall.
Low-resolution security camera image, slight digital noise, mild compression artifacts, cool fluorescent color cast, no on-screen text, no timestamp.
```
설명: 대표가 신입 폰을 두 손으로 내민 순간의 투샷입니다. S13에서 신입이 바로 나갈 수 있게 문을 열어 둡니다.

### B14 → S14 (참고 R2, Soul ID: sanggu)
```
Still frame from a fixed ceiling-mounted CCTV security camera, high angle from the back-right corner of the room looking toward the door wall, wide shot, 16:9.
sanggu: Korean man, 41, chubby round build, soft round face, thick black round-frame glasses, messy short black hair sticking up at the crown, kind droopy eyes, small mole on his left cheekbone below the glasses, wrinkled light blue oxford shirt, no tie, right shirttail untucked, unbuttoned beige cotton blazer with sleeves pushed up, dark grey slacks, brown shoes
prop-phone-sanggu: a large smartphone in a scuffed matte black rugged case with thick raised corner bumpers, a square camera bump in the top-left corner of the back, no logo, no stickers, no ring holder, front is black glass with thin bezels
sanggu sits alone behind the desk facing the camera, small in the frame, leaning forward, his right hand resting on his phone lying face down on the desk. The applicant chair is empty.
interview-room: small, slightly worn Korean IT company meeting room, white walls, ceiling fluorescent panels. Grey desk near the door wall, two black office chairs behind it with backs to the door; one applicant chair facing the desk. Window with white blinds on one side wall. Door in the door-wall corner farthest from the window, CCTV above it.
light-afternoon: warm low afternoon sunlight entering through the side-wall window blinds, soft striped light patches across the desk and floor, fluorescent panels still on, rest of the room stays cool white, not golden or cinematic
From this camera the window wall appears on the right side of the frame and the door at the left of the far wall; sanggu sits on the frame-right side of the desk.
Low-resolution security camera image, slight digital noise, mild compression artifacts, cool fluorescent color cast, no on-screen text, no timestamp.
```
설명: 혼자 남은 대표가 엎어 둔 폰 위에 손을 얹고 있는 장면입니다.

### B15 → S15 (참고 R3, Soul ID: sanggu)
```
Still frame from a fixed ceiling-mounted CCTV security camera, high angle from the back-right corner of the room looking toward the door wall, wide shot, 16:9.
sanggu: Korean man, 41, chubby round build, soft round face, thick black round-frame glasses, messy short black hair sticking up at the crown, kind droopy eyes, small mole on his left cheekbone below the glasses, wrinkled light blue oxford shirt, no tie, right shirttail untucked, unbuttoned beige cotton blazer with sleeves pushed up, dark grey slacks, brown shoes
prop-phone-sanggu: a large smartphone in a scuffed matte black rugged case with thick raised corner bumpers, a square camera bump in the top-left corner of the back, no logo, no stickers, no ring holder, front is black glass with thin bezels
sanggu stands behind the desk facing the camera, small in the frame, holding a loose stack of papers in both hands just above the desk. His phone lies face down on the desk beside him. No other people.
interview-room: small, slightly worn Korean IT company meeting room, white walls, ceiling fluorescent panels. Grey desk near the door wall, two black office chairs behind it with backs to the door; one applicant chair facing the desk. Window with white blinds on one side wall. Door in the door-wall corner farthest from the window, CCTV above it.
light-dusk: orange-pink sunset glow from the side-wall window, a long band of orange light across the white wall, fluorescent panels on but weaker, room getting dim, blue-grey shadows gathering in the corners
From this camera the window wall appears on the right side of the frame and the door at the left of the far wall; sanggu stands on the frame-right side of the desk.
Low-resolution security camera image, slight digital noise, mild compression artifacts, no on-screen text, no timestamp.
```
설명: 노을 진 면접실에서 대표가 서류를 든 채 서 있는 장면입니다.

### B16 → S16 (참고 R5, Soul ID 없음)
```
Still frame from a small fixed desk camera clipped to the interviewer-side edge of the desk, looking down at the grey desk top, close insert, 16:9.
sanggu: Korean man, 41, chubby round build, soft round face, thick black round-frame glasses, messy short black hair sticking up at the crown, kind droopy eyes, small mole on his left cheekbone below the glasses, wrinkled light blue oxford shirt, no tie, right shirttail untucked, unbuttoned beige cotton blazer with sleeves pushed up, dark grey slacks, brown shoes
prop-phone-sanggu: a large smartphone in a scuffed matte black rugged case with thick raised corner bumpers, a square camera bump in the top-left corner of the back, no logo, no stickers, no ring holder, front is black glass with thin bezels
sanggu's phone lies face down on the desk on the frame-left side next to a neat stack of papers. Only the edge of sanggu's right hand and pushed-up beige blazer sleeve is visible at the bottom-left of the frame, face not in frame.
light-dusk: orange-pink sunset glow from the side-wall window, a long band of orange light across the white wall, fluorescent panels on but weaker, room getting dim, blue-grey shadows gathering in the corners
Low-resolution webcam-like security image, slight digital noise, mild compression artifacts, no on-screen text, no timestamp.
```
설명: 노을빛이 든 책상 위에 대표의 폰이 엎어져 있는 인서트입니다.

### 따로 만들지 않는 것
- S10: B06을 다시 씁니다.
- S13: S12 채택 영상의 마지막 프레임을 캡처해서 씁니다. 크레딧이 들지 않습니다.
