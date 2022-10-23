#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359;

uniform float u_time;
uniform vec2 u_resolution;
uniform vec2 u_mouse;



float plot(vec2 st, float pct){
    // smoothstep(min,max,x)
    return smoothstep(pct-0.02,pct,st.y) - smoothstep(pct,pct+0.02,st.y);
}

void main(){
    vec2 st = gl_FragCoord.xy/u_resolution;

    //첫 번째 매개변수의 값을 두 번째로 거듭제곱한 값을 반환합니다. - pow
    //st.x^5
    //  exp(), log(), sqrt().
    // float y = step(0.5,st.x);

    // float t= cos(u_time);
    // float y = exp(t);

    // float y = mod(st.x,0.5); // 0.5로 나눈 나머지
//float y = fract(x); // 소수점 구간만 취하기.
//float y = ceil(x);  // x값보다 큰 정수, 올림.
//float y = floor(x); // x값보다 작은 정수, 내림.
//float y = sign(x);  // x의 부호 취득.
//float y = abs(x);   // x의 절대값 구하기.
//float y = clamp(x,0.0,1.0); // x값이 0.0과 1.0에 존재하도록 자른다.
//float y = min(0.0,x);   // x가 0.0보다 작으면 x, 크면 0.0
//float y = max(0.0,x);   // x가 0.0보다 크면 x, 작으면 0.0 

    float t = u_time * PI;
    float y = floor(sin(t));
    

    vec3 color = vec3(y);
    float pct = plot(st,y);
    
      color = (1.0-pct)*color+pct*vec3(0.0,1.0,0.0);

    gl_FragColor = vec4(color,1.);
    
}