module UnrealScript.Engine.SkelControl_Multiply;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControl_Multiply : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkelControl_Multiply")); }
	@property final auto ref float Multiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
}
