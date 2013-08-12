module UnrealScript.Engine.DynamicSMActor_Spawnable;

import ScriptClasses;
import UnrealScript.Engine.DynamicSMActor;

extern(C++) interface DynamicSMActor_Spawnable : DynamicSMActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DynamicSMActor_Spawnable")); }
	private static __gshared DynamicSMActor_Spawnable mDefaultProperties;
	@property final static DynamicSMActor_Spawnable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DynamicSMActor_Spawnable)("DynamicSMActor_Spawnable Engine.Default__DynamicSMActor_Spawnable")); }
}
