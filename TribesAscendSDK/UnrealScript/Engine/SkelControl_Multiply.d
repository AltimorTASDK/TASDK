module UnrealScript.Engine.SkelControl_Multiply;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControl_Multiply : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkelControl_Multiply")); }
	private static __gshared SkelControl_Multiply mDefaultProperties;
	@property final static SkelControl_Multiply DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkelControl_Multiply)("SkelControl_Multiply Engine.Default__SkelControl_Multiply")); }
	@property final auto ref float Multiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
}
