precision lowp float;

uniform sampler2D u_TextureUnit;
varying vec2 v_TextureCoordinates;
uniform float u_Opacity;

void main()
{
    lowp vec4 texColor = texture2D(u_TextureUnit, v_TextureCoordinates);
    gl_FragColor = vec4(texColor.r,texColor.g,texColor.b,u_Opacity);
}