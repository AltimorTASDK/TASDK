module UnrealScript.Engine.DominantSpotLight;

import ScriptClasses;
import UnrealScript.Engine.SpotLight;

extern(C++) interface DominantSpotLight : SpotLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DominantSpotLight")); }
	private static __gshared DominantSpotLight mDefaultProperties;
	@property final static DominantSpotLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DominantSpotLight)("DominantSpotLight Engine.Default__DominantSpotLight")); }
}
