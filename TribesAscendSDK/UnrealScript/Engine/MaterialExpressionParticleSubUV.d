module UnrealScript.Engine.MaterialExpressionParticleSubUV;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionTextureSample;

extern(C++) interface MaterialExpressionParticleSubUV : MaterialExpressionTextureSample
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionParticleSubUV")); }
	private static __gshared MaterialExpressionParticleSubUV mDefaultProperties;
	@property final static MaterialExpressionParticleSubUV DefaultProperties() { mixin(MGDPC("MaterialExpressionParticleSubUV", "MaterialExpressionParticleSubUV Engine.Default__MaterialExpressionParticleSubUV")); }
}
