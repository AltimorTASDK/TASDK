module UnrealScript.Engine.AnimNotify_Footstep;

import ScriptClasses;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Footstep : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify_Footstep")); }
	private static __gshared AnimNotify_Footstep mDefaultProperties;
	@property final static AnimNotify_Footstep DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNotify_Footstep)("AnimNotify_Footstep Engine.Default__AnimNotify_Footstep")); }
	@property final auto ref int FootDown() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
}
