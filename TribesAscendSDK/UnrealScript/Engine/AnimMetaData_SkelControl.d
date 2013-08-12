module UnrealScript.Engine.AnimMetaData_SkelControl;

import ScriptClasses;
import UnrealScript.Engine.AnimMetaData;

extern(C++) interface AnimMetaData_SkelControl : AnimMetaData
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimMetaData_SkelControl")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) SkelControlNameList() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 60); }
			ScriptName SkelControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bFullControlOverController() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bFullControlOverController(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
}
