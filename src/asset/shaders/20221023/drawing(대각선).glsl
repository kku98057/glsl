#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359

uniform float u_time;
uniform vec2 u_resolution;
uniform vec2 u_mouse;

float plot(vec2 st){
    //soothstep 단계적으로 두값 사이의 보간을 수행 
    //보간: 두점 사이를 연결하는 의미
    //. 첫번째것은 경계나, 한계점이고, 두번째것은 체크하거나 넘길 값이다.
    //어떤값이든 이 한계점보다 낮은 값은 0으로 처리되어 리턴될것이고, 
    //한계점보다 높은 값은 1.0으로 처리되어 리턴될것이다.
    //두값의 레인지를 주고, 그 사이의 값으로 보간시켜주는 방법이다. 
    //처음 두개의 인자는 레인지의 시작점과 끝점이고, 세번째 인자는 두 점사이에서
    // 보간되고 리턴되는 값이다.
    return smoothstep(0.02,0.0,abs(st.y-st.x));
}

void main(){
    
    vec2 st = gl_FragCoord.xy/u_resolution;

    float y =   st.x;
    
    vec3 color = vec3(y);

    float pct = plot(st);
    color = (1.0 - pct)*color*vec3(0.,0.1,0.);
    gl_FragColor = vec4(color,1.0);
}