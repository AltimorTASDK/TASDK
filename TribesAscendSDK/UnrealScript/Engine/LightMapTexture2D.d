module UnrealScript.Engine.LightMapTexture2D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Texture2D;

extern(C++) interface LightMapTexture2D : Texture2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LightMapTexture2D")()); }
	private static __gshared LightMapTexture2D mDefaultProperties;
	@property final static LightMapTexture2D DefaultProperties() { mixin(MGDPC!(LightMapTexture2D, "LightMapTexture2D Engine.Default__LightMapTexture2D")()); }
}
