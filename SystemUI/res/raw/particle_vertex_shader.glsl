uniform mat4 u_Matrix;
uniform float u_Time;
uniform float u_PlusAlpha;
uniform float u_ParticleAlpha;




attribute vec3 a_Position;
attribute vec4 a_Color;
attribute float a_Size;
attribute float a_HideOnHome;



attribute vec3 a_DirectionVector;
attribute float a_ParticleStartTime;


varying vec4 v_Color;


void main()                    
{                                	  	  

    vec4 tempPosition = u_Matrix * vec4(a_Position, 1.0);
    gl_Position = tempPosition;
    float size = 14.0-tempPosition.z * 4.0;
    float tempSize = size * a_Size;
    gl_PointSize = tempSize;
    float alpha = (5.0 -tempPosition.z);


   if(a_HideOnHome < 2.0){
       alpha = alpha*u_PlusAlpha;
    }

    if(alpha>1.0){
        alpha = 1.0;
    }

    v_Color = a_Color*vec4(1,1,1,alpha*u_ParticleAlpha);


}   