


//#ifdef를 이용해 전역변수 선언 혹은 기본적인 논리구현이 가능
//#ifdef 혹은 #endif를 통해.
// GL_ES를 선언하였고 모바일기기,브라우져에서 컴파일 될때 전처리되는 부분들인것
// //////////////
// precision(실수정확도)는 퍼포먼스에 영향을 미침
// 낮은 precision일수록 빠른 렌더속도 하지만 퀄리티가 낮다
// 실수정확도를 중간으로 낮춘것.
// 높게 = precision highp float
// 낮게 = precision lowp float
/////////////////////////////////
//실수인 경우에는 항상 .을 포함하여 변수가 실수임을 명시
#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time;

void main() {
    // vec4 => red, green, blue, alpha


    vec4 color = vec4(vec2(1.0,0.0),vec2(1.0,1.0));
	gl_FragColor = color;
}

