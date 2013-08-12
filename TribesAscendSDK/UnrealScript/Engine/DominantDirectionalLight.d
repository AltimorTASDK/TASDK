module UnrealScript.Engine.DominantDirectionalLight;

import ScriptClasses;
import UnrealScript.Engine.DirectionalLight;

extern(C++) interface DominantDirectionalLight : DirectionalLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DominantDirectionalLight")); }
	private static __gshared DominantDirectionalLight mDefaultProperties;
	@property final static DominantDirectionalLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DominantDirectionalLight)("DominantDirectionalLight Engine.Default__DominantDirectionalLight")); }
}
