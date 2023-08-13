#ifndef SCENECOLOR2D_INCLUDED
#define SCENECOLOR2D_INCLUDED

TEXTURE2D (_CameraSortingLayerTexture);
SAMPLER (sampler_CameraSortingLayerTexture);

void SceneColor2D_float(float4 UV, out float3 Out)
{
    #ifdef SHADERGRAPH_PREVIEW
    Out = float3(1, 1, 1);
    #else
    Out = SAMPLE_TEXTURE2D(_CameraSortingLayerTexture, sampler_CameraSortingLayerTexture, UV.xy).rgb;
    #endif
}

void SceneColor2D_half(half4 UV, out half3 Out)
{
    #ifdef SHADERGRAPH_PREVIEW
    Out = float3(1, 1, 1);
    #else
    Out = SAMPLE_TEXTURE2D(_CameraSortingLayerTexture, sampler_CameraSortingLayerTexture, UV.xy).rgb;
    #endif
}
#endif
