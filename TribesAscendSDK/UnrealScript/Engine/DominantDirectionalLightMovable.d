module UnrealScript.Engine.DominantDirectionalLightMovable;

import ScriptClasses;
import UnrealScript.Engine.DominantDirectionalLight;

extern(C++) interface DominantDirectionalLightMovable : DominantDirectionalLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DominantDirectionalLightMovable")); }
	private static __gshared DominantDirectionalLightMovable mDefaultProperties;
	@property final static DominantDirectionalLightMovable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DominantDirectionalLightMovable)("DominantDirectionalLightMovable Engine.Default__DominantDirectionalLightMovable")); }
}
