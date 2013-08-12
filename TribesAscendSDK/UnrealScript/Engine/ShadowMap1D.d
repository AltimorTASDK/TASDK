module UnrealScript.Engine.ShadowMap1D;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ShadowMap1D : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ShadowMap1D")); }
	private static __gshared ShadowMap1D mDefaultProperties;
	@property final static ShadowMap1D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ShadowMap1D)("ShadowMap1D Engine.Default__ShadowMap1D")); }
}
