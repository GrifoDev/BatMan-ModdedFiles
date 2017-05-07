precision lowp float;


varying vec4 v_Color;
uniform float u_Opacity;

void main()
{


//    lowp int positionY = int(gl_FragCoord.y);
//    lowp int mod = positionY-(positionY/2)*2;
//
//    if(mod<1){
//        discard;
//    }
//    else{
//       gl_FragColor = vec4(v_Color.r,v_Color.g,v_Color.b,u_Opacity);
//    }

    gl_FragColor = vec4(v_Color.r,v_Color.g,v_Color.b,u_Opacity);


}