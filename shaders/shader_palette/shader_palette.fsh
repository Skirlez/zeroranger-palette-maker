// Taken directly from ZeroRanger's data.win.

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 cBl;

uniform vec3 cG0;
uniform vec3 cG1;
uniform vec3 cG2;
uniform vec3 cG3;

uniform vec3 cF0;
uniform vec3 cF1;
uniform vec3 cF2;
uniform vec3 cF3;

uniform vec3 cWh;

void main() //Alternate palette
{
    vec4 Color = texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    if (Color.r < 0.24)
    {
        if (Color.g > 0.39)
            gl_FragColor.rgb = cG3; //lightgreen
        
        else if (Color.g > 0.24)
            gl_FragColor.rgb = cG2; //green
        
        else if (Color.g > 0.18)
            gl_FragColor.rgb = cG1; //darkgreen
        
        else if (Color.g > 0.08)
            gl_FragColor.rgb = cG0; //darkestgreen
        
        else
            gl_FragColor.rgb = cBl;
    // Originals:
    //gl_FragColor.rgb = vec3(0.0,0.502,0.502);
    //gl_FragColor.rgb = vec3(0.0,0.282,0.282);
    //gl_FragColor.rgb = vec3(0.0,0.216,0.216);
    //gl_FragColor.rgb = vec3(0.0,0.157,0.157);
    }
    else
    {
        if (Color.g > 0.86)
            gl_FragColor.rgb = cWh; //White
        
        else if (Color.g > 0.61)
            gl_FragColor.rgb = cF3; //lightfire
        
        else if (Color.g > 0.43)
            gl_FragColor.rgb = cF2; //fire
        
        else if (Color.g > 0.31)
            gl_FragColor.rgb = cF1; //darkfire
        
        else
            gl_FragColor.rgb = cF0; //darkestfire
            
    // Originals:
    //gl_FragColor.rgb = vec3(1.0,0.737,0.475);
    //gl_FragColor.rgb = vec3(1.0,0.502,0.0);
    //gl_FragColor.rgb = vec3(0.878,0.376,0.125);
    //gl_FragColor.rgb = vec3(0.722,0.251,0.0);
    }
}
