# 첫 장면 이미지 (Image-to-Video용)

> 작성: 도윤(촬영감독), 2026-10-04. 개정: 같은 날 대표 지시로 자연스러운 드라마 실사 화면, 샷별 자유 카메라, 캐주얼 의상(sanggu v4, eunsol v4, manseok v2, applicant v3) 반영. 근거: [화면 형식 회의록](../../meetings/2026-10-04-screen-format.md), [레퍼런스 시트](../../02-preproduction/character-sheets/reference-sheet.md), [대본 v2](../../01-development/script.md)

## 공통 규칙
- 화면: 자연스러운 드라마 실사, 눈높이 근처, 깨끗한 화질, 얕은 심도, 16:9. 카메라 움직임은 영상 프롬프트에서 샷마다 정합니다. 첫 장면 이미지는 움직임이 시작되는 구도입니다.
- 카메라 자리
  - WIDE(넓은 화면): 방 안쪽 화이트보드 쪽 모서리, 지원자 의자 너머로 책상을 봅니다. 35mm 느낌. B01~B04, B06(어깨 너머), B11, B14, B15
  - FRONT(문 쪽 정면): 면접관 뒤 문 쪽 벽에서 지원자 의자를 봅니다. 50mm 느낌은 B05, 35mm 느낌은 B10
  - REACTION: 지원자 의자 쪽에서 대표 정면 바스트. B17
  - INSERT(책상 인서트): 면접관 쪽 책상 가장자리 위에서 내려다봅니다. B07, B08, B16. B09는 책상 아래로 숙인 구도
  - SIDE(창가 쪽 옆 화면): 창가에서 책상 앞에 선 두 사람을 옆으로 봅니다. B12
- 좌우는 방 기준으로만 적습니다. 창가 쪽 = 창이 있는 옆벽, 문 쪽 = 유리문·화이트보드가 있는 쪽. 대표는 책상의 창가 쪽, 이사는 책상의 문 쪽 끝입니다.
- 모델
  - 사람 없는 방(R1~R6)과 얼굴이 나오지 않는 이미지(B07, B08, B09, B11, B16): `soul_2`. 참고 이미지를 넣으면 구도를 그대로 따라오므로 같은 카메라 자리의 R만 참고로 씁니다.
  - 주인공 얼굴이 보이는 이미지(B01, B04, B05, B06, B10, B12, B14, B15, B17): `gpt_image_2_5` medium. 참고 이미지 1 = 같은 카메라 자리의 R, 참고 이미지 2(와 3) = 서아가 확정한 기준 얼굴. 참고 이미지를 여러 장 넣을 수 있는지는 확인 필요입니다. 안 되면 얼굴 한 장만 넣고 방은 프롬프트로 맞춥니다.
  - B02, B03: B01을 `gpt_image_2_5`로 편집합니다.
- 기준 얼굴 사진의 옷은 예전 정장입니다. 그래서 첫 줄에 "얼굴에만 쓴다"를 적었습니다. 옷은 고정 설명문을 따릅니다.
- 원하는 것만 긍정문으로 씁니다. 고정 설명문 안의 no는 서아 원문이라 그대로 둡니다.
- 은솔의 얼굴이 보이면 기본 표정은 해맑은 미소입니다.
- R1~R6을 먼저 만들고 서아에게 검수를 받습니다. 기존 `P001_base_R1_v1.png`, `P001_base_B05_v2b`는 옛 앵글·옛 방·옛 의상이라 쓰지 않습니다.
- 저장 이름: `P001_base_R1_v2.png`, `P001_base_B05_v3.png` 식입니다.

## 방 이미지 (사람 없음, soul_2)

### R1 v2 — WIDE, 낮 (참고 없음)
```
Realistic Korean drama film still, natural light, 16:9. Empty room, no people.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-day: bright clean daylight through the half-open white blinds plus soft white ceiling lights, even and pleasant, natural colors, fresh and airy office mood
Eye-level camera, slightly above, in the whiteboard-side back corner of the room behind the applicant chair, looking across the room toward the desk, 35mm lens look, wide shot. The applicant chair is in the near foreground with its back to the camera, the desk and two interviewer chairs beyond it, the window wall along one side and the glass door in the far corner on the whiteboard side.
Clean high-definition image, shallow depth of field with focus on the desk, realistic Korean drama look.
```
설명: WIDE 자리의 빈 면접실(낮)입니다. 모든 WIDE 이미지의 배치 기준이 됩니다.

### R2 — WIDE, 오후 (참고 R1)
R1 프롬프트 맨 앞에 "Same room, camera position and framing as the reference image."를 붙이고, `light-day: ...` 문단만 아래로 바꿉니다.
```
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
```

### R3 — WIDE, 노을 (참고 R1)
R2와 같은 방법으로 `light-day: ...` 문단만 아래로 바꿉니다.
```
light-dusk: warm orange-pink sunset glow through the side-wall window, a soft golden band of light across the white wall and light-wood desk, warm ceiling lights on, room still comfortably lit, gentle emotional evening mood, not dark or gloomy
```

### R4 — FRONT, 오후 (참고 없음)
```
Realistic Korean drama film still, natural light, 16:9. Empty room, no people.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Eye-level camera, slightly above, on the door-wall side just behind the two empty interviewer chairs, looking across the desk toward the applicant chair, 35mm lens look, medium-wide shot. The applicant chair faces the camera in the middle of the frame, the window wall on one side and the whiteboard wall on the other.
Clean high-definition image, shallow depth of field with focus on the applicant chair, realistic Korean drama look.
```
설명: 문 쪽 정면에서 지원자 의자를 본 빈 방입니다. B05와 B10의 기준입니다.

### R5 — INSERT, 오후 (참고 없음)
```
Realistic Korean drama film still, natural light, 16:9. Empty desk top, no people, no objects.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Camera just above the interviewer-side edge of the light-wood desk, between the two interviewer seats, angled down at the desk top toward the applicant side, 50mm lens look, close insert. Sunlight stripes fall from the window side.
Clean high-definition image, shallow depth of field, realistic Korean drama look.
```
설명: 책상 인서트 자리에서 내려다본 빈 원목 책상입니다.

### R6 — SIDE, 오후 (참고 없음)
```
Realistic Korean drama film still, natural light, 16:9. Empty room, no people.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Eye-level camera standing by the window, looking across the open floor in front of the desk toward the whiteboard wall, the end of the desk at one edge of the frame and the open glass door in the background corner, 35mm lens look, medium-wide shot.
Clean high-definition image, shallow depth of field, realistic Korean drama look.
```
설명: 창가에서 화이트보드 벽 쪽을 본 빈 방입니다. B12의 기준입니다.

## 샷별 첫 장면 이미지

### B01 → S01 (gpt_image_2_5, 참고 R1 + sanggu 얼굴)
```
Use reference image 1 for the room and camera position, and reference image 2 only for sanggu's face.
Realistic Korean drama film still, natural light, 16:9.
sanggu: handsome Korean man, 41, actor-level looks, tall, broad-shouldered, slightly chubby with soft round cheeks and a little belly, still handsome, not obese, no double chin, friendly face, clear skin, warm bright eyes, neat short black hair with slight volume on top, thick black perfectly round glasses, small mole on left cheek, clean-shaven, unbuttoned light blue oxford shirt worn open over a plain white crew-neck T-shirt, sleeves rolled to the forearms, right shirttail hanging lower, beige chino pants, white canvas sneakers
manseok: Korean man, mid-50s, ordinary executive, shown only from behind, in side profile, or as hands, face never in focus, upright posture, neatly combed-back hair streaked with grey, dark navy quarter-zip knit sweater over a white collared shirt, charcoal trousers, black leather loafers, no tie, silver metal wristwatch on left wrist, short clean fingernails
applicant: young Korean job applicant seated upright in the single chair facing the interview desk, back and shoulders toward camera in the foreground, softly out of focus from shallow depth of field, face not visible, short dark hair, plain forest green crew-neck knit sweater, dark jeans, same pose and chair position every time
sanggu sits on the window side of the desk facing the camera, half-reclined in his chair, a black pen in his right hand, an open resume on the desk in front of him. manseok sits upright at the glass-door end of the desk in side profile.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-day: bright clean daylight through the half-open white blinds plus soft white ceiling lights, even and pleasant, natural colors, fresh and airy office mood
Eye-level camera, slightly above, in the whiteboard-side back corner of the room behind the applicant chair, looking across the room toward the desk, 35mm lens look, wide shot.
Clean high-definition image, shallow depth of field with focus on sanggu, natural skin tones, realistic Korean drama look.
```

### B02 → S02 (B01 편집, gpt_image_2_5)
```
Same image as the reference, identical in every detail. Change only the applicant's sweater color.
applicant: young Korean job applicant seated upright in the single chair facing the interview desk, back and shoulders toward camera in the foreground, softly out of focus from shallow depth of field, face not visible, short dark hair, plain burgundy crew-neck knit sweater, dark jeans, same pose and chair position every time
```
설명: 편집이 안 되면 B01을 쓰고 색은 CapCut에서 바꿉니다.

### B03 → S03 (B01 편집, gpt_image_2_5)
```
Same image as the reference, identical in every detail. Change only the applicant's sweater color.
applicant: young Korean job applicant seated upright in the single chair facing the interview desk, back and shoulders toward camera in the foreground, softly out of focus from shallow depth of field, face not visible, short dark hair, plain cobalt blue crew-neck knit sweater, dark jeans, same pose and chair position every time
```

### B04 → S04 (gpt_image_2_5, 참고 R2 + sanggu 얼굴)
```
Use reference image 1 for the room and camera position, and reference image 2 only for sanggu's face.
Realistic Korean drama film still, natural light, 16:9.
sanggu: handsome Korean man, 41, actor-level looks, tall, broad-shouldered, slightly chubby with soft round cheeks and a little belly, still handsome, not obese, no double chin, friendly face, clear skin, warm bright eyes, neat short black hair with slight volume on top, thick black perfectly round glasses, small mole on left cheek, clean-shaven, unbuttoned light blue oxford shirt worn open over a plain white crew-neck T-shirt, sleeves rolled to the forearms, right shirttail hanging lower, beige chino pants, white canvas sneakers
manseok: Korean man, mid-50s, ordinary executive, shown only from behind, in side profile, or as hands, face never in focus, upright posture, neatly combed-back hair streaked with grey, dark navy quarter-zip knit sweater over a white collared shirt, charcoal trousers, black leather loafers, no tie, silver metal wristwatch on left wrist, short clean fingernails
The applicant chair in the foreground is empty. sanggu sits on the window side of the desk facing the camera. manseok sits upright at the glass-door end of the desk in side profile. The glass door in the far corner is closed.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Eye-level camera, slightly above, in the whiteboard-side back corner of the room behind the empty applicant chair, looking across the room toward the desk and the glass door, 35mm lens look, wide shot.
Clean high-definition image, shallow depth of field with focus on the glass door, natural skin tones, realistic Korean drama look.
```

### B05 v3 → S05 (gpt_image_2_5, 참고 R4 + eunsol 얼굴)
```
Use reference image 1 for the room only, and reference image 2 only for eunsol's face; the camera is closer than in reference image 1.
Realistic Korean drama film still, natural light, 16:9.
eunsol: beautiful Korean woman, 25, actress-level looks, adult face, slim, clear fair skin, black hair center-parted in a neat low bun at the nape, two short face-framing wisps, large clear dark eyes, straight dark eyebrows, tiny mole on her nose bridge, sheer makeup, rosy-nude lips, soft butter-yellow knit cardigan over a white crew-neck T-shirt, light-wash straight jeans, clean white sneakers, black single-strap shoulder bag on her right shoulder, small black notebook, no ponytail, no backpack
eunsol stands in front of the applicant chair facing the camera, both hands holding her shoulder bag strap on her right shoulder, bright sunny smile, face clearly visible. She is the only person in the frame.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Eye-level camera, slightly above, just behind the interviewer desk, looking toward the applicant chair, 50mm lens look, medium-wide shot showing her from head to knees. The window wall is on one side of the frame and the whiteboard wall on the other.
Clean high-definition image, shallow depth of field with focus on her face, natural skin tones, realistic Korean drama look.
```
설명: 이 작품에서 얼굴이 가장 잘 보이는 장면이라 가장 공들여 만듭니다.

### B17 → S17 (gpt_image_2_5, 참고 R1 + sanggu 얼굴)
```
Use reference image 1 for the room only, and reference image 2 only for sanggu's face; the camera is much closer than in reference image 1.
Realistic Korean drama film still, natural light, 16:9.
sanggu: handsome Korean man, 41, actor-level looks, tall, broad-shouldered, slightly chubby with soft round cheeks and a little belly, still handsome, not obese, no double chin, friendly face, clear skin, warm bright eyes, neat short black hair with slight volume on top, thick black perfectly round glasses, small mole on left cheek, clean-shaven, unbuttoned light blue oxford shirt worn open over a plain white crew-neck T-shirt, sleeves rolled to the forearms, right shirttail hanging lower, beige chino pants, white canvas sneakers
sanggu sits behind the light-wood desk facing the camera, chest-up, a black pen held mid-twirl between the fingers of his right hand just above the desk, calm neutral expression, eyes looking straight ahead past the camera.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Eye-level camera at the applicant's seated eye height in front of the desk, facing sanggu, 50mm lens look, chest-up shot, soft window light on his face from the window side.
Clean high-definition image, shallow depth of field with focus on his eyes, natural skin tones, realistic Korean drama look.
```
설명: 씬 5 대표 리액션의 시작 화면입니다. 볼펜을 돌리는 중입니다.

### B06 → S06 (gpt_image_2_5, 참고 R1 + sanggu 얼굴)
```
Use reference image 1 for the room only, and reference image 2 only for sanggu's face; the camera is closer, just behind the applicant chair.
Realistic Korean drama film still, natural light, 16:9.
eunsol: beautiful Korean woman, 25, actress-level looks, adult face, slim, clear fair skin, black hair center-parted in a neat low bun at the nape, two short face-framing wisps, large clear dark eyes, straight dark eyebrows, tiny mole on her nose bridge, sheer makeup, rosy-nude lips, soft butter-yellow knit cardigan over a white crew-neck T-shirt, light-wash straight jeans, clean white sneakers, black single-strap shoulder bag on her right shoulder, small black notebook, no ponytail, no backpack
sanggu: handsome Korean man, 41, actor-level looks, tall, broad-shouldered, slightly chubby with soft round cheeks and a little belly, still handsome, not obese, no double chin, friendly face, clear skin, warm bright eyes, neat short black hair with slight volume on top, thick black perfectly round glasses, small mole on left cheek, clean-shaven, unbuttoned light blue oxford shirt worn open over a plain white crew-neck T-shirt, sleeves rolled to the forearms, right shirttail hanging lower, beige chino pants, white canvas sneakers
manseok: Korean man, mid-50s, ordinary executive, shown only from behind, in side profile, or as hands, face never in focus, upright posture, neatly combed-back hair streaked with grey, dark navy quarter-zip knit sweater over a white collared shirt, charcoal trousers, black leather loafers, no tie, silver metal wristwatch on left wrist, short clean fingernails
eunsol sits in the applicant chair in the near foreground, seen from behind over her shoulder, low bun clearly visible at the nape, her mouth hidden, her open notebook on the near edge of the desk and a black pen in her right hand. Across the desk, sanggu sits on the window side resting his chin on one hand, looking at her. manseok sits upright at the glass-door end of the desk in side profile.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Eye-level over-the-shoulder shot from behind the applicant chair on the whiteboard side, 50mm lens look.
Clean high-definition image, shallow depth of field with focus on sanggu, natural skin tones, realistic Korean drama look.
```

### B07 → S07 (soul_2, 참고 R5)
```
Same room, camera position and framing as the reference image.
Realistic Korean drama film still, natural light, 16:9.
eunsol: beautiful Korean woman, 25, actress-level looks, adult face, slim, clear fair skin, black hair center-parted in a neat low bun at the nape, two short face-framing wisps, large clear dark eyes, straight dark eyebrows, tiny mole on her nose bridge, sheer makeup, rosy-nude lips, soft butter-yellow knit cardigan over a white crew-neck T-shirt, light-wash straight jeans, clean white sneakers, black single-strap shoulder bag on her right shoulder, small black notebook, no ponytail, no backpack
Only eunsol's right hand and butter-yellow cardigan sleeve are visible at the far edge of the desk, holding a black pen over her open small black notebook; her face stays out of frame.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Camera just above the interviewer-side edge of the light-wood desk, angled down at the desk top toward the applicant side, 50mm lens look, close insert.
Clean high-definition image, shallow depth of field with focus on the pen tip, realistic Korean drama look.
```

### B08 → S08 (soul_2, 참고 R5)
```
Same room, camera position and framing as the reference image.
Realistic Korean drama film still, natural light, 16:9.
sanggu: handsome Korean man, 41, actor-level looks, tall, broad-shouldered, slightly chubby with soft round cheeks and a little belly, still handsome, not obese, no double chin, friendly face, clear skin, warm bright eyes, neat short black hair with slight volume on top, thick black perfectly round glasses, small mole on left cheek, clean-shaven, unbuttoned light blue oxford shirt worn open over a plain white crew-neck T-shirt, sleeves rolled to the forearms, right shirttail hanging lower, beige chino pants, white canvas sneakers
prop-printout: a single white A4 sheet in portrait orientation printed with black monospaced computer code in small, unreadable type, lines aligned in clear stepped indentation blocks that form a visible staircase pattern along the left margin, wide white right margin, no color, no logo, slightly creased from handling
Only sanggu's right hand and forearm with the rolled light blue shirt sleeve are visible, coming in from the window side of the frame, index finger resting on the top lines of the printout; his face stays out of frame.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Camera just above the interviewer-side edge of the light-wood desk, angled down at the desk top, 50mm lens look, close insert.
Clean high-definition image, shallow depth of field with focus on the fingertip, realistic Korean drama look.
```

### B09 → S09 (soul_2, 참고 없음)
```
Realistic Korean drama film still, natural light, 16:9.
manseok: Korean man, mid-50s, ordinary executive, shown only from behind, in side profile, or as hands, face never in focus, upright posture, neatly combed-back hair streaked with grey, dark navy quarter-zip knit sweater over a white collared shirt, charcoal trousers, black leather loafers, no tie, silver metal wristwatch on left wrist, short clean fingernails
sanggu: handsome Korean man, 41, actor-level looks, tall, broad-shouldered, slightly chubby with soft round cheeks and a little belly, still handsome, not obese, no double chin, friendly face, clear skin, warm bright eyes, neat short black hair with slight volume on top, thick black perfectly round glasses, small mole on left cheek, clean-shaven, unbuttoned light blue oxford shirt worn open over a plain white crew-neck T-shirt, sleeves rolled to the forearms, right shirttail hanging lower, beige chino pants, white canvas sneakers
prop-note: a palm-sized white memo slip torn from a notepad, folded once in half, lying flat, blank matte outer side facing up with no lines, print, or logo, one crisp crease, slightly uneven torn top edge
The light-wood desk edge runs across the top of the frame. Below it, sanggu's beige chinos are on the sunlit window side and manseok's charcoal trousers on the glass-door side. manseok's left hand with the silver wristwatch rests on his knee holding the folded note. Only knees and hands are in frame.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Camera at the interviewer-side edge of the desk, angled steeply down past the near desk edge to the two interviewers' knees under the desk, 50mm lens look, close insert.
Clean high-definition image, soft shade under the desk, shallow depth of field with focus on the note, realistic Korean drama look.
```

### B10 → S10 (gpt_image_2_5, 참고 R4 + eunsol 얼굴 + sanggu 얼굴은 뒷모습이라 생략)
```
Use reference image 1 for the room and camera position, and reference image 2 only for eunsol's face.
Realistic Korean drama film still, natural light, 16:9.
sanggu: handsome Korean man, 41, actor-level looks, tall, broad-shouldered, slightly chubby with soft round cheeks and a little belly, still handsome, not obese, no double chin, friendly face, clear skin, warm bright eyes, neat short black hair with slight volume on top, thick black perfectly round glasses, small mole on left cheek, clean-shaven, unbuttoned light blue oxford shirt worn open over a plain white crew-neck T-shirt, sleeves rolled to the forearms, right shirttail hanging lower, beige chino pants, white canvas sneakers
manseok: Korean man, mid-50s, ordinary executive, shown only from behind, in side profile, or as hands, face never in focus, upright posture, neatly combed-back hair streaked with grey, dark navy quarter-zip knit sweater over a white collared shirt, charcoal trousers, black leather loafers, no tie, silver metal wristwatch on left wrist, short clean fingernails
eunsol: beautiful Korean woman, 25, actress-level looks, adult face, slim, clear fair skin, black hair center-parted in a neat low bun at the nape, two short face-framing wisps, large clear dark eyes, straight dark eyebrows, tiny mole on her nose bridge, sheer makeup, rosy-nude lips, soft butter-yellow knit cardigan over a white crew-neck T-shirt, light-wash straight jeans, clean white sneakers, black single-strap shoulder bag on her right shoulder, small black notebook, no ponytail, no backpack
In the near foreground on the window side, sanggu sits in his chair seen from behind, his shoulders and the back of his head softly out of focus. manseok sits at the glass-door end of the desk in side profile at the edge of the frame. Across the desk, eunsol sits in the applicant chair facing the camera with a gentle, attentive smile, face clearly visible.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Eye-level camera, slightly above, behind the interviewers on the door-wall side, looking past them across the desk toward eunsol, 35mm lens look, medium-wide shot.
Clean high-definition image, shallow depth of field with focus on eunsol's face, natural skin tones, realistic Korean drama look.
```
설명: 대표가 일어나기 직전의 화면입니다. 면접관 뒤에서 신입 얼굴이 정면으로 보입니다.

### B11 → S11 (soul_2, 참고 R2)
```
Same room, camera position and framing as the reference image.
Realistic Korean drama film still, natural light, 16:9.
sanggu: handsome Korean man, 41, actor-level looks, tall, broad-shouldered, slightly chubby with soft round cheeks and a little belly, still handsome, not obese, no double chin, friendly face, clear skin, warm bright eyes, neat short black hair with slight volume on top, thick black perfectly round glasses, small mole on left cheek, clean-shaven, unbuttoned light blue oxford shirt worn open over a plain white crew-neck T-shirt, sleeves rolled to the forearms, right shirttail hanging lower, beige chino pants, white canvas sneakers
prop-printout: a single white A4 sheet in portrait orientation printed with black monospaced computer code in small, unreadable type, lines aligned in clear stepped indentation blocks that form a visible staircase pattern along the left margin, wide white right margin, no color, no logo, slightly creased from handling
sanggu stands alone by the window, his back and one shoulder toward the camera, holding the printout in both hands. The desk and chairs are empty.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Eye-level camera, slightly above, in the whiteboard-side back corner of the room, looking across the room toward the window wall, 35mm lens look, wide shot.
Clean high-definition image, shallow depth of field with focus on sanggu at the window, realistic Korean drama look.
```

### B12 → S12 (gpt_image_2_5, 참고 R6 + sanggu 얼굴 + eunsol 얼굴)
```
Use reference image 1 for the room and camera position, reference image 2 only for sanggu's face, and reference image 3 only for eunsol's face.
Realistic Korean drama film still, natural light, 16:9.
sanggu: handsome Korean man, 41, actor-level looks, tall, broad-shouldered, slightly chubby with soft round cheeks and a little belly, still handsome, not obese, no double chin, friendly face, clear skin, warm bright eyes, neat short black hair with slight volume on top, thick black perfectly round glasses, small mole on left cheek, clean-shaven, unbuttoned light blue oxford shirt worn open over a plain white crew-neck T-shirt, sleeves rolled to the forearms, right shirttail hanging lower, beige chino pants, white canvas sneakers
eunsol: beautiful Korean woman, 25, actress-level looks, adult face, slim, clear fair skin, black hair center-parted in a neat low bun at the nape, two short face-framing wisps, large clear dark eyes, straight dark eyebrows, tiny mole on her nose bridge, sheer makeup, rosy-nude lips, soft butter-yellow knit cardigan over a white crew-neck T-shirt, light-wash straight jeans, clean white sneakers, black single-strap shoulder bag on her right shoulder, small black notebook, no ponytail, no backpack
prop-phone-eunsol: a slim smartphone in a smooth pale lavender silicone case, small round camera lenses in the top-left corner of the back, no logo, no stickers, no charms, front is black glass with thin bezels
sanggu and eunsol stand face to face in front of the desk, both seen in side profile. sanggu holds eunsol's phone out with both hands; eunsol reaches toward it with a bright cheerful smile. The glass door in the background stands open.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Eye-level camera on the window side of the room, looking across at the two of them in profile with the whiteboard wall behind them, 35mm lens look, medium two-shot.
Clean high-definition image, shallow depth of field with focus on their faces and hands, natural skin tones, realistic Korean drama look.
```
설명: 참고 이미지를 3장 넣을 수 없으면 eunsol 얼굴만 넣습니다. 상구는 옆모습이라 고정 설명문으로 충분합니다.

### B14 → S14 (gpt_image_2_5, 참고 R2 + sanggu 얼굴)
```
Use reference image 1 for the room and camera position, and reference image 2 only for sanggu's face.
Realistic Korean drama film still, natural light, 16:9.
sanggu: handsome Korean man, 41, actor-level looks, tall, broad-shouldered, slightly chubby with soft round cheeks and a little belly, still handsome, not obese, no double chin, friendly face, clear skin, warm bright eyes, neat short black hair with slight volume on top, thick black perfectly round glasses, small mole on left cheek, clean-shaven, unbuttoned light blue oxford shirt worn open over a plain white crew-neck T-shirt, sleeves rolled to the forearms, right shirttail hanging lower, beige chino pants, white canvas sneakers
prop-phone-sanggu: a large smartphone in a scuffed matte black rugged case with thick raised corner bumpers, a square camera bump in the top-left corner of the back, no logo, no stickers, no ring holder, front is black glass with thin bezels
sanggu sits alone on the window side of the desk facing the camera, leaning forward, his right hand resting on his phone lying face down on the desk. The applicant chair is empty.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-afternoon: warm afternoon sunlight through the side-wall window blinds, soft striped light patches across the light-wood desk and floor, soft ceiling lights on, room bright and clean, natural colors, calm pleasant mood
Eye-level camera, slightly above, in the whiteboard-side back corner of the room behind the empty applicant chair, looking across the room toward the desk, 35mm lens look, wide shot.
Clean high-definition image, shallow depth of field with focus on sanggu, natural skin tones, realistic Korean drama look.
```

### B15 → S15 (gpt_image_2_5, 참고 R3 + sanggu 얼굴)
```
Use reference image 1 for the room and camera position, and reference image 2 only for sanggu's face; the camera starts a little closer than in reference image 1.
Realistic Korean drama film still, natural light, 16:9.
sanggu: handsome Korean man, 41, actor-level looks, tall, broad-shouldered, slightly chubby with soft round cheeks and a little belly, still handsome, not obese, no double chin, friendly face, clear skin, warm bright eyes, neat short black hair with slight volume on top, thick black perfectly round glasses, small mole on left cheek, clean-shaven, unbuttoned light blue oxford shirt worn open over a plain white crew-neck T-shirt, sleeves rolled to the forearms, right shirttail hanging lower, beige chino pants, white canvas sneakers
prop-phone-sanggu: a large smartphone in a scuffed matte black rugged case with thick raised corner bumpers, a square camera bump in the top-left corner of the back, no logo, no stickers, no ring holder, front is black glass with thin bezels
sanggu stands on the window side behind the desk facing the camera, holding a loose stack of papers in both hands just above the desk. His phone lies face down on the desk beside him. He is alone in the room.
interview-room: bright, modern Korean IT startup meeting room, clean white walls with warm light-wood accents, soft recessed ceiling lights, a few green plants. Light-wood desk near the door wall, two black ergonomic office chairs behind it with backs to the door; one matching chair for the applicant facing the desk. Large window with white blinds on one side wall, whiteboard on the wall opposite the window, glass door in the door-wall corner farthest from the window.
light-dusk: warm orange-pink sunset glow through the side-wall window, a soft golden band of light across the white wall and light-wood desk, warm ceiling lights on, room still comfortably lit, gentle emotional evening mood, not dark or gloomy
Eye-level camera, slightly above, from the whiteboard-side back of the room, looking across the room toward the desk, 35mm lens look, medium-wide shot.
Clean high-definition image, shallow depth of field with focus on sanggu, natural skin tones, realistic Korean drama look.
```
설명: S15는 카메라가 뒤로 빠지므로 R3보다 조금 가까운 구도에서 시작합니다.

### B16 → S16 (soul_2, 참고 R5)
```
Same room, camera position and framing as the reference image, with sunset light instead of afternoon light.
Realistic Korean drama film still, natural light, 16:9.
sanggu: handsome Korean man, 41, actor-level looks, tall, broad-shouldered, slightly chubby with soft round cheeks and a little belly, still handsome, not obese, no double chin, friendly face, clear skin, warm bright eyes, neat short black hair with slight volume on top, thick black perfectly round glasses, small mole on left cheek, clean-shaven, unbuttoned light blue oxford shirt worn open over a plain white crew-neck T-shirt, sleeves rolled to the forearms, right shirttail hanging lower, beige chino pants, white canvas sneakers
prop-phone-sanggu: a large smartphone in a scuffed matte black rugged case with thick raised corner bumpers, a square camera bump in the top-left corner of the back, no logo, no stickers, no ring holder, front is black glass with thin bezels
sanggu's phone lies face down on the desk on the window side next to a neat stack of papers. Only the edge of sanggu's right hand and rolled light blue shirt sleeve is visible at the window-side edge of the frame; his face stays out of frame.
light-dusk: warm orange-pink sunset glow through the side-wall window, a soft golden band of light across the white wall and light-wood desk, warm ceiling lights on, room still comfortably lit, gentle emotional evening mood, not dark or gloomy
Camera just above the interviewer-side edge of the light-wood desk, angled down at the desk top, 50mm lens look, close insert.
Clean high-definition image, shallow depth of field with focus on the phone, realistic Korean drama look.
```
설명: 노을빛으로 안 바뀌면 참고 없이 다시 만듭니다.

### 따로 만들지 않는 것
- S13: S12 채택 영상의 마지막 프레임을 캡처해서 씁니다. 크레딧이 들지 않습니다.
