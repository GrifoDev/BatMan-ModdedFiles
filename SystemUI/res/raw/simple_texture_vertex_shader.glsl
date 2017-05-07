precision highp float;

uniform mat4 u_Matrix;

attribute vec4 a_Position;


attribute vec2 a_MaskTextureCoordinates;
varying vec2 v_MaskCoordinates;


uniform float a_MovePosition;
uniform float a_MoveYPosition;


void main()                    
{

    float moveDistance = a_MovePosition;
    vec4 objectPosition = vec4(a_Position.x+moveDistance, a_Position.y+a_MoveYPosition, a_Position.z, a_Position.w);

    v_MaskCoordinates = a_MaskTextureCoordinates;
    gl_Position = u_Matrix * objectPosition;

}