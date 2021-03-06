// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-1304-RGB,emission-3655-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32443,y:32712,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_TexCoord,id:2868,x:31184,y:32975,varname:node_2868,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Code,id:995,x:31529,y:33215,varname:node_995,prsc:2,code:ZgByAGEAZwBDAG8AbwByAGQALgB4ACAAIAA9ACAAZgBsAG8AbwByACgAZgByAGEAZwBDAG8AbwByAGQALgB4AC8ARAApADsAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAvAC8AIABUAGgAaQBzACAAaQBzACAAdABoAGUAIABlAHgAYQBjAHQAIAByAGUAcABsAGkAYwBhACAAbwBmACAAdABoAGUAIABjAGEAbABjAHUAbABhAHQAaQBvAG4AIABpAG4AIAB0AGUAeAB0ACAAZgB1AG4AYwB0AGkAbwBuACAAZgBvAHIAIABnAGUAdAB0AGkAbgBnACAAdABoAGUAIABjAGUAbABsACAAaQBkAHMALgAgAEgAZQByAGUAIAB3AGUAIAB3AGEAbgB0ACAAdABoAGUAIABpAGQAIABmAG8AcgAgAHQAaABlACAAYwBvAGwAdQBtAG4AcwAgAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAA0AZgBsAG8AYQB0ACAAcwB0AGUAcABzACAAPQAgADEALwBEADsACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAGYAbABvAGEAdAAgAG8AZgBmAHMAZQB0ACAAPQAgAHMAaQBuACAAKABmAHIAYQBnAEMAbwBvAHIAZAAuAHgAKgAxADUALgApADsAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAALwAvACAARQBhAGMAaAAgAGQAcgBvAHAAIABvAGYAIAByAGEAaQBuACAAbgBlAGUAZABzACAAdABvACAAcwB0AGEAcgB0ACAAYQB0ACAAYQAgAGQAaQBmAGYAZQByAGUAbgB0ACAAcABvAGkAbgB0AC4AIABUAGgAZQAgAGMAbwBsAHUAbQBuACAAaQBkACAAIABwAGwAdQBzACAAYQAgAHMAaQBuACAAaQBzACAAdQBzAGUAZAAgAHQAbwAgAGcAZQBuAGUAcgBhAHQAZQAgAGEAIABkAGkAZgBmAGUAcgBlAG4AdAAgAG8AZgBmAHMAZQB0ACAAZgBvAHIAIABlAGEAYwBoACAAYwBvAGwAdQBtAG0ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAZgBsAG8AYQB0ACAAcwBwAGUAZQBkACAAIAA9ACAAYwBvAHMAIAAoAGYAcgBhAGcAQwBvAG8AcgBkAC4AeAAqADMALgApACoALgAxADUAIAArACAALgAzADUAOwAgACAAIAAgACAAIAAvAC8AIABTAGEAbQBlACAAYQBzACAAYQBiAG8AdgBlACwAIABiAHUAdAAgAGYAbwByACAAcwBwAGUAZQBkAC4AIABTAGkAbgBjAGUAIAB3AGUAIABkAG8AbgB0ACAAdwBhAG4AdAAgAHQAaABlACAAYwBvAGwAdQBtAG4AcwAgAHQAcgBhAHYAZQBsAGwAaQBuAGcAIAB1AHAALAAgAHcAZQAgAGEAcgBlACAAYQBkAGQAaQBuAGcAIAB0AGgAZQAgADAALgA3AC4AIABTAGkAbgBjAGUAIAB0AGgAZQAgAGMAbwBzACAAKgAwAC4AMwAgAGcAbwBlAHMAIABiAGUAdAB3AGUAZQBuACAALQAwAC4AMwAgAGEAbgBkACAAMAAuADMAIAB0AGgAZQAgADAALgA3ACAAZQBuAHMAdQByAGUAcwAgAHQAaABhAHQAIAB0AGgAZQAgAHMAcABlAGUAZAAgAGcAbwBlAHMAIABiAGUAdAB3AGUAZQBuACAAMAAuADQAIABtAGEAZAAgADEALgAwAC4AIABUAGgAaQBzACAAaQBzACAAYQBsAHMAbwAgAGMAbwBuAHQAcgBvAGwAIABwAGEAcgBhAG0AZQB0AGUAcgBzACAAZgBvAHIAIABtAGkAbgAgAGEAbgBkACAAbQBhAHgAIABzAHAAZQBlAGQADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAZgBsAG8AYQB0ACAAeQAgACAAIAAgACAAIAA9ACAAZgByAGEAYwAoACgAZgByAGEAZwBDAG8AbwByAGQALgB5ACAALwAgAEIAKQAgACAALwAvACAAVABoAGkAcwAgAG0AYQBwAHMAIAB0AGgAZQAgAHMAYwByAGUAZQBuACAAYQBnAGEAaQBuACAAcwBvACAAdABoAGEAdAAgAHQAbwBwACAAaQBzACAAMQAgAGEAbgBkACAAYgB1AHQAdABvAG4AIABpAHMAIAAwAC4AIABUAGgAZQAgAGEAZABkAGkAdABpAG8AbgAgAHcAaQB0AGgAIAB0AGkAbQBlACAAYQBuAGQAIABmAHIAYQBjACAAdwBvAHUAbABkACAAYwBhAHUAcwBlACAAYQBuACAAZQBuAHQAaQByAGUAIABiAGEAcgAgAG0AbwB2AGkAbgBnACAAZgByAG8AbQAgAGIAdQB0AHQAbwBuACAAdABvACAAdABvAHAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACsAIABDACAAKgAgAHMAcABlAGUAZAAgACsAIABvAGYAZgBzAGUAdAApADsAIAAgACAAIAAvAC8AIAB0AGgAZQAgAHMAcABlAGUAZAAgAGEAbgBkACAAbwBmAGYAcwBlAHQAIAB3AG8AdQBsAGQAIABjAGEAdQBzAGUAIAB0AGgAZQAgAGMAbwBsAHUAbQBuAHMAIAB0AG8AIABtAG8AdgBlACAAZABvAHcAbgAgAGEAdAAgAGQAaQBmAGYAZQByAGUAbgB0ACAAcwBwAGUAZQBkAHMALgAgAFcAaABpAGMAaAAgAGMAYQB1AHMAZQBzACAAdABoAGUAIAByAGEAaQBuACAAZAByAG8AcAAgAGUAZgBmAGUAYwB0AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHIAZQB0AHUAcgBuACAARQAgAC8AIAAoAHkAKgBGACkAOwAgACAAIAAgACAAIAAgAA==,output:2,fname:Function_node_995,width:1610,height:328,input:1,input:0,input:0,input:0,input:2,input:0,input_1_label:fragCoord,input_2_label:B,input_3_label:C,input_4_label:D,input_5_label:E,input_6_label:F|A-2868-UVOUT,B-5749-OUT,C-6387-OUT,D-6773-OUT,E-1022-RGB,F-2578-OUT;n:type:ShaderForge.SFN_Vector1,id:7370,x:30889,y:33455,varname:node_7370,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:5749,x:31007,y:33047,varname:node_5749,prsc:2,v1:3;n:type:ShaderForge.SFN_Time,id:3805,x:30649,y:33132,varname:node_3805,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6387,x:30889,y:33243,varname:node_6387,prsc:2|A-3805-T,B-2900-OUT;n:type:ShaderForge.SFN_Slider,id:2900,x:30557,y:33342,ptovrint:False,ptlb:ScrollSpeed,ptin:_ScrollSpeed,varname:node_2900,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:20;n:type:ShaderForge.SFN_Color,id:1022,x:31236,y:33342,ptovrint:False,ptlb:Color_Beams,ptin:_Color_Beams,varname:node_1022,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1,c2:1,c3:0.35,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:7048,x:30703,y:33804,ptovrint:False,ptlb:size,ptin:_size,varname:node_7048,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:16;n:type:ShaderForge.SFN_Divide,id:6773,x:30947,y:33563,varname:node_6773,prsc:2|A-7370-OUT,B-7048-OUT;n:type:ShaderForge.SFN_TexCoord,id:1390,x:31096,y:33638,varname:node_1390,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Code,id:3797,x:31915,y:33567,varname:node_3797,prsc:2,code:ZgBsAG8AYQB0ADIAIAB1AHYAIAAgACAAIAA9ACAAZgByAGEAYwAgACgAYwBvAG8AcgBkAC4AeAB5AC8AIABEACkAOwAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAC8ALwAgAEcAZQB0AGkAbgBnACAAdABoAGUAIABmAHIAYQBjAHQAIABwAGEAcgB0ACAAbwBmACAAdABoAGUAIABiAGwAbwBjAGsALAAgAHQAaABpAHMAIABpAHMAIAB0AGgAZQAgAHUAdgAgAG0AYQBwACAAZgBvAHIAIAB0AGgAZQAgAGIAbABvAGMAbAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAZgBsAG8AYQB0ADIAIABiAGwAbwBjAGsAIAA9ACAAZgBsAG8AbwByACgAYwBvAG8AcgBkAC4AeAB5AC8AIABEACkAOwAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAC8ALwAgAEcAZQB0AHQAaQBuAGcAIAB0AGgAZQAgAGkAZAAgAGYAbwByACAAdABoAGUAIABiAGwAbwBjAGsALgAgAFQAaABlACAAZgBpAHIAcwB0ACAAYgBsAG8AYwBsACAAaQBzACAAKAAwACwAMAApACAAdABvACAAaQB0AHMAIAByAGkAZwBoAHQAIAAoADEALAAwACkALAAgAGEAbgBkACAAYQBiAG8AdgBlACAAaQB0ACAAKAAwACwAMQApACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAdQB2ACAAIAAgACAAPQAgAHUAdgA7ACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAvAC8AIABaAG8AbwBtAGkAbgBnACAAYQAgAGIAaQB0ACAAaQBuACAAZQBhAGMAaAAgAGIAbABvAGMAawAgAHQAbwAgAGgAYQB2AGUAIABsAGEAcgBnAGUAcgAgAGwAdAB0AGUAcgBzAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABmAGwAbwBhAHQAMgAgAHIAYQBuAGQAIAAgAD0AIAB0AGUAeAAyAEQAKABfAHcAaABpAHQAZQBfAG4AbwBpAHMAZQAsACAAIAAgACAAIAAgACAAIAAgACAALwAvACAAVABoAGkAcwAgAHQAZQB4AHQAdQByAGUAIABjAG8AbgB0AGEAaQBuAHMAIABhAG4AaQBtAGEAdABlAGQAIAB3AGgAaQB0AGUAIABuAG8AaQBzAGUALgAgAFQAaABlACAAdwBoAGkAdABlACAAbgBvAGkAcwBlACAAaQBzACAAYQBuAGkAbQBhAHQAZQBkACAAaQBuACAAYwBvAG0AcAB1AHQAZQAgAHMAaABhAGQAZQByAHMADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAGIAbABvAGMAawAuAHgAeQAvAGYAbABvAGEAdAAyACgANQAxADIALgAsADUAMQAyAC4AKQAgACsAIABFACkALgB4AHkAOwAgACAAIAAgACAAIAAvAC8AIAA1ADEAMgAgAGkAcwAgAHQAaABlACAAdwBoAGkAdABlACAAbgBvAGkAcwBlACAAdABlAHgAdAB1AHIAZQAgAHcAaQBkAHQAaAAuACAAVABoAGkAcwAgAGQAaQB2AGkAcwBpAG8AbgAgAGUAbgBzAHUAcgBlAHMAIAB0AGgAYQB0ACAAZQBhAGMAaAAgAGIAbABvAGMAawAgAHMAYQBtAHAAbABlAHMAIABlAHgAYQBjAHQAbAB5ACAAbwBuAGUAIABwAGkAeABlAGwAIABvAGYAIAB0AGgAZQAgAG4AbwBpAHMAZQAgAHQAZQB4AHQAdQByAGUADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHIAYQBuAGQAIAAgAD0AIABmAGwAbwBvAHIAKAByAGEAbgBkACoAMQA2AC4AKQA7ACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAC8ALwAgAEUAYQBjAGgAIAByAGEAbgBkAG8AbQAgAHYAYQBsAHUAZQAgAGkAcwAgAHUAcwBlAGQAIABmAG8AcgAgAHQAaABlACAAYgBsAG8AYwBrACAAdABvACAAcwBhAG0AcABsAGUAIABvAG4AZQAgAG8AZgAgAHQAaABlACAAMQA2ACAAYwBvAGwAdQBtAG4AcwAgAG8AZgAgAHQAaABlACAAZgBvAG4AdAAgAHQAZQB4AHQAdQByAGUALgAgAFQAaABpAHMAIAByAGEAbgBkACAAbwBmAGYAcwBlAHQAIABpAHMAIAB3AGgAYQB0ACAAcABpAGMAawBzACAAdABoAGUAIABsAGUAdAB0AGUAcgAsACAAdABoAGUAIABhAG4AaQBtAGEAdABlAGQAIAB3AGgAaQB0AGUAIABuAG8AaQBzAGUAIABpAHMAIAB3AGgAYQB0ACAAYwBoAGEAbgBnAGUAcwAgAGkAdAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAB1AHYAIAAgACAAKwA9ACAAcgBhAG4AZAA7ACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAvAC8AIABUAGgAZQAgAHIAYQBuAGQAbwBtACAAdABlAHgAdAB1AHIAZQAgAGgAYQBzACAAYQAgAGQAaQBmAGYAZQByAGUAbgB0ACAAdgBhAGwAdQBlACAAdQBuAGQAIAB0AGgAZQAgAHgAeQAgAGMAaABhAG4AbgBlAGwAcwAuACAAVABoAGkAcwAgAGUAbgBzAHUAcgBlAHMAIAB0AGgAYQB0ACAAcgBhAG4AZABvAG0AbAB5ACAAbwBuAGUAIABtAGUAbQBiAGUAcgAgAG8AZgAgAHQAaABlACAAdABlAHgAdAB1AHIAZQAgAGkAcwAgAHAAaQBjAGsAZQBkACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHUAdgAgACAAIAAqAD0AIAAwAC4AMAA2ADIANQA7ACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAC8ALwAgAFMAbwAgAGYAYQByACAAdABoAGUAIAB1AHYAIAB2AGEAbAB1AGUAIABpAHMAIABiAGUAdAB3AGUAZQBuACAAMAAtADEANgAuACAAVABvACAAcwBhAG0AcABsAGUAIAB0AGgAZQAgAGYAbwBuAHQAIAB0AGUAeAB0AHUAcgBlACAAdwBlACAAbgBlAGUAZAAgAHQAbwAgAG4AbwByAG0AYQBsAGkAegBlACAAdABoAGkAcwAgAHQAbwAgADAALQAxAC4AIABoAGUAbgBjAGUAIABhACAAZABpAHYAaQBkACAAYgB5ACAAMQA2AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHUAdgAuAHgAIAAgAD0AIAAtAHUAdgAuAHgAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHIAZQB0AHUAcgBuACAAdABlAHgAMgBEACgAXwBmAG8AbgB0AF8AdABlAHgAdAB1AHIAZQAsACAAdQB2ACkALgByADsA,output:0,fname:Function_node_3797,width:1404,height:433,input:1,input:12,input:12,input:0,input:0,input_1_label:coord,input_2_label:_white_noise,input_3_label:_font_texture,input_4_label:D,input_5_label:E|A-1390-UVOUT,B-7186-TEX,C-9871-TEX,D-6773-OUT,E-7687-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:9871,x:31368,y:33834,ptovrint:False,ptlb:font_texture,ptin:_font_texture,varname:node_9871,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7d08f5508aef17343963eda7852acac6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3655,x:33303,y:33338,varname:node_3655,prsc:2|A-995-OUT,B-3797-OUT;n:type:ShaderForge.SFN_Slider,id:2578,x:31176,y:33503,ptovrint:False,ptlb:bias,ptin:_bias,varname:node_2578,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:42,max:100;n:type:ShaderForge.SFN_Tex2dAsset,id:7186,x:31368,y:33640,ptovrint:False,ptlb:node_7186,ptin:_node_7186,varname:node_7186,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b3a6cea98fe25ef498738325b0130672,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:6199,x:31064,y:34098,ptovrint:False,ptlb:textSpeed,ptin:_textSpeed,varname:node_6199,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.01;n:type:ShaderForge.SFN_Time,id:8315,x:31142,y:34223,varname:node_8315,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7687,x:31498,y:34038,varname:node_7687,prsc:2|A-6199-OUT,B-8315-T;proporder:1304-2900-1022-7048-9871-2578-7186-6199;pass:END;sub:END;*/

Shader "Shader Forge/MatrixLetters" {
    Properties {
        _Color ("Color", Color) = (0,0,0,1)
        _ScrollSpeed ("ScrollSpeed", Range(0, 20)) = 0.5
        _Color_Beams ("Color_Beams", Color) = (0.1,1,0.35,1)
        _size ("size", Float ) = 16
        _font_texture ("font_texture", 2D) = "white" {}
        _bias ("bias", Range(0, 100)) = 42
        _node_7186 ("node_7186", 2D) = "white" {}
        _textSpeed ("textSpeed", Range(0, 0.01)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            float3 Function_node_995( float2 fragCoord , float B , float C , float D , float3 E , float F ){
            fragCoord.x  = floor(fragCoord.x/D);             // This is the exact replica of the calculation in text function for getting the cell ids. Here we want the id for the columns 
                                     float steps = 1/D;
                                     float offset = sin (fragCoord.x*15.);               // Each drop of rain needs to start at a different point. The column id  plus a sin is used to generate a different offset for each columm
                                     float speed  = cos (fragCoord.x*3.)*.15 + .35;      // Same as above, but for speed. Since we dont want the columns travelling up, we are adding the 0.7. Since the cos *0.3 goes between -0.3 and 0.3 the 0.7 ensures that the speed goes between 0.4 mad 1.0. This is also control parameters for min and max speed
                                     float y      = frac((fragCoord.y / B)  // This maps the screen again so that top is 1 and button is 0. The addition with time and frac would cause an entire bar moving from button to top
                                                         + C * speed + offset);    // the speed and offset would cause the columns to move down at different speeds. Which causes the rain drop effect
                                     
                                     return E / (y*F);       
            }
            
            uniform float _ScrollSpeed;
            uniform float4 _Color_Beams;
            uniform float _size;
            float Function_node_3797( float2 coord , sampler2D _white_noise , sampler2D _font_texture , float D , float E ){
            float2 uv    = frac (coord.xy/ D);                // Geting the fract part of the block, this is the uv map for the blocl
                                    float2 block = floor(coord.xy/ D);                // Getting the id for the block. The first blocl is (0,0) to its right (1,0), and above it (0,1) 
                                           uv    = uv;                       // Zooming a bit in each block to have larger ltters
                                      
                                            float2 rand  = tex2D(_white_noise,          // This texture contains animated white noise. The white noise is animated in compute shaders
                                                   block.xy/float2(512.,512.) + E).xy;      // 512 is the white noise texture width. This division ensures that each block samples exactly one pixel of the noise texture
                                    
                                           rand  = floor(rand*16.);                     // Each random value is used for the block to sample one of the 16 columns of the font texture. This rand offset is what picks the letter, the animated white noise is what changes it
                                           uv   += rand;                                // The random texture has a different value und the xy channels. This ensures that randomly one member of the texture is picked 
                                    
                                           uv   *= 0.0625;                              // So far the uv value is between 0-16. To sample the font texture we need to normalize this to 0-1. hence a divid by 16
                                           uv.x  = -uv.x;
                                      return tex2D(_font_texture, uv).r;
            }
            
            uniform sampler2D _font_texture; uniform float4 _font_texture_ST;
            uniform float _bias;
            uniform sampler2D _node_7186; uniform float4 _node_7186_ST;
            uniform float _textSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = _Color.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 node_3805 = _Time;
                float node_6773 = (1.0/_size);
                float4 node_8315 = _Time;
                float3 emissive = (Function_node_995( i.uv0 , 3.0 , (node_3805.g*_ScrollSpeed) , node_6773 , _Color_Beams.rgb , _bias )*Function_node_3797( i.uv0 , _node_7186 , _font_texture , node_6773 , (_textSpeed*node_8315.g) ));
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            float3 Function_node_995( float2 fragCoord , float B , float C , float D , float3 E , float F ){
            fragCoord.x  = floor(fragCoord.x/D);             // This is the exact replica of the calculation in text function for getting the cell ids. Here we want the id for the columns 
                                     float steps = 1/D;
                                     float offset = sin (fragCoord.x*15.);               // Each drop of rain needs to start at a different point. The column id  plus a sin is used to generate a different offset for each columm
                                     float speed  = cos (fragCoord.x*3.)*.15 + .35;      // Same as above, but for speed. Since we dont want the columns travelling up, we are adding the 0.7. Since the cos *0.3 goes between -0.3 and 0.3 the 0.7 ensures that the speed goes between 0.4 mad 1.0. This is also control parameters for min and max speed
                                     float y      = frac((fragCoord.y / B)  // This maps the screen again so that top is 1 and button is 0. The addition with time and frac would cause an entire bar moving from button to top
                                                         + C * speed + offset);    // the speed and offset would cause the columns to move down at different speeds. Which causes the rain drop effect
                                     
                                     return E / (y*F);       
            }
            
            uniform float _ScrollSpeed;
            uniform float4 _Color_Beams;
            uniform float _size;
            float Function_node_3797( float2 coord , sampler2D _white_noise , sampler2D _font_texture , float D , float E ){
            float2 uv    = frac (coord.xy/ D);                // Geting the fract part of the block, this is the uv map for the blocl
                                    float2 block = floor(coord.xy/ D);                // Getting the id for the block. The first blocl is (0,0) to its right (1,0), and above it (0,1) 
                                           uv    = uv;                       // Zooming a bit in each block to have larger ltters
                                      
                                            float2 rand  = tex2D(_white_noise,          // This texture contains animated white noise. The white noise is animated in compute shaders
                                                   block.xy/float2(512.,512.) + E).xy;      // 512 is the white noise texture width. This division ensures that each block samples exactly one pixel of the noise texture
                                    
                                           rand  = floor(rand*16.);                     // Each random value is used for the block to sample one of the 16 columns of the font texture. This rand offset is what picks the letter, the animated white noise is what changes it
                                           uv   += rand;                                // The random texture has a different value und the xy channels. This ensures that randomly one member of the texture is picked 
                                    
                                           uv   *= 0.0625;                              // So far the uv value is between 0-16. To sample the font texture we need to normalize this to 0-1. hence a divid by 16
                                           uv.x  = -uv.x;
                                      return tex2D(_font_texture, uv).r;
            }
            
            uniform sampler2D _font_texture; uniform float4 _font_texture_ST;
            uniform float _bias;
            uniform sampler2D _node_7186; uniform float4 _node_7186_ST;
            uniform float _textSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = _Color.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
