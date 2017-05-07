precision highp float;
precision highp sampler2D;

uniform sampler2D u_MaskUnit;


varying vec2 v_MaskCoordinates;

uniform float u_OverallAlpha;

void main()                    		
{
    highp vec4 maskColor = texture2D(u_MaskUnit, v_MaskCoordinates);
    gl_FragColor =maskColor*u_OverallAlpha;
}