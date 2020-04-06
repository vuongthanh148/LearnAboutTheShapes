varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec3 size;//width,height,radius

const int Quality = 50;
const int Directions = 12;
const float Pi = 6.28318530718;//pi * 2

void main()
{
    vec2 radius = size.z/size.xy;
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord);
    for( float d=0.0;d<Pi;d+=Pi/float(Directions) )
    {
        for( float i=1.0/float(Quality);i<=1.0;i+=1.0/float(Quality) )
        {
                Color += texture2D( gm_BaseTexture, v_vTexcoord+vec2(cos(d),sin(d))*radius*i);
        }
    }
    Color /= float(Quality)*float(Directions)+1.0;
    gl_FragColor =  Color *  v_vColour;
}

/*const int Quality = 8;
const float Distance = 0.1;
const int Directions = 16;

//varying vec2 v_vTexcoord;
//varying vec4 v_vColour;
const float Pi = 3.14159265359;
const float Tau = Pi*2.0;

void main()
{

vec4 Color;

for(float dir = 0.0;dir<1.0;dir+=1.0/float(Directions)) {
float xvar = (Distance*2.0+Distance)*sin(dir*Tau);
float yvar = (Distance*2.0+Distance)*cos(dir*Tau);

for(float i = 0.0;i < 1.0;i+=1.0/float(Quality)) {
float dis = i*Distance;
Color += texture2D(gm_BaseTexture,vec2(v_vTexcoord.x+xvar*dis,v_vTexcoord.y+yvar*dis));
}

}
Color /= float(Quality)*float(Directions); //I don't get the +1.0 part in the original, removing it seems to have no effect.

gl_FragColor = Color; //Same as above but with the *v_vColour part.
}*/