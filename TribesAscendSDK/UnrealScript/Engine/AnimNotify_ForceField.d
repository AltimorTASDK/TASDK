module UnrealScript.Engine.AnimNotify_ForceField;

import ScriptClasses;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_ForceField : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify_ForceField")); }
	private static __gshared AnimNotify_ForceField mDefaultProperties;
	@property final static AnimNotify_ForceField DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNotify_ForceField)("AnimNotify_ForceField Engine.Default__AnimNotify_ForceField")); }
	@property final
	{
		auto ref
		{
			ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bAttach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bAttach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	}
}
