// 병렬처리 Thread들이 서로에 대해 데이터를 공유x
// cpu로부터 input을 받을 수 있다.
// 이 input들은 모든 Thread에서 일정(uniform)하고 read only이다.

// 이런 인풋들을 uniform이라고 하고
// float, vec2, vec3, vec4, mat2, mat3, mat4, sample2D, sampleCube등의 데이터타입지원
// uniform의 값들은 보통 floating pont precision의 설정이 끝난 후 선언된다.
//유니폼은 CPU와 GPU사이에 다리
#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution; //쉐이더가 그려지고 있는 빌보드의 사이즈
uniform vec2 u_mouse; //그려지는 빌보드내에서 마우스의 현재 픽셀 위치값
uniform float u_time; //쉐이더 연산이 시작된후부터의 초

void main(){

    vec2 st = gl_FragCoord.xy/u_time/400.;
    gl_FragColor = vec4(st.x,st.y,0.,1.);
}

// 삼각함수 지원
//sin(), cos(), tan(), asin(), acos(), atan(), pow(), exp(), log(), sqrt(), abs(), sign(), floor(), ceil(), fract(), mod(), min(), max(), clamp().