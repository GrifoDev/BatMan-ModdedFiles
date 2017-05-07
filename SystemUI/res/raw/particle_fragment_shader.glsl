precision lowp float;
varying vec4 v_Color;
varying float v_ElapsedTime;
uniform float u_ParticleDistance;
void main()
{


    float xDistance = 0.5 - gl_PointCoord.x;
    float yDistance = 0.5 - gl_PointCoord.y;

    float distanceFromCenter = sqrt(xDistance * xDistance + yDistance * yDistance);

    //u_MaxDistanceFromCircle 0.5 is default
    if (distanceFromCenter > u_ParticleDistance) { discard;
    } else {
//        float alpha = 1.0 - distanceFromCenter;
//        gl_FragColor = vec4(v_Color.x,v_Color.y,v_Color.z,v_Color.w*alpha );
        gl_FragColor = vec4(v_Color);
    }


}







