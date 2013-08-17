module UnrealScript.Engine.ShadowMapTexture2D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Texture2D;

extern(C++) interface ShadowMapTexture2D : Texture2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ShadowMapTexture2D")()); }
	private static __gshared ShadowMapTexture2D mDefaultProperties;
	@property final static ShadowMapTexture2D DefaultProperties() { mixin(MGDPC!(ShadowMapTexture2D, "ShadowMapTexture2D Engine.Default__ShadowMapTexture2D")()); }
	@property final auto ref int ShadowmapFlags() { mixin(MGPC!("int", 368)()); }
}
