module UnrealScript.Engine.ShadowMapTexture2D;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;

extern(C++) interface ShadowMapTexture2D : Texture2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ShadowMapTexture2D")); }
	private static __gshared ShadowMapTexture2D mDefaultProperties;
	@property final static ShadowMapTexture2D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ShadowMapTexture2D)("ShadowMapTexture2D Engine.Default__ShadowMapTexture2D")); }
	@property final auto ref int ShadowmapFlags() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
}
