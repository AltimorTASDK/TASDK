module UnrealScript.Engine.ShadowMap1D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ShadowMap1D : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ShadowMap1D")()); }
	private static __gshared ShadowMap1D mDefaultProperties;
	@property final static ShadowMap1D DefaultProperties() { mixin(MGDPC!(ShadowMap1D, "ShadowMap1D Engine.Default__ShadowMap1D")()); }
}
