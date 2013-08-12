module UnrealScript.Engine.InterpGroupInstAI;

import ScriptClasses;
import UnrealScript.Engine.InterpGroupInst;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroupAI;

extern(C++) interface InterpGroupInstAI : InterpGroupInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpGroupInstAI")); }
	private static __gshared InterpGroupInstAI mDefaultProperties;
	@property final static InterpGroupInstAI DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpGroupInstAI)("InterpGroupInstAI Engine.Default__InterpGroupInstAI")); }
	@property final
	{
		auto ref
		{
			Actor.EPhysics SavedPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 84); }
			InterpGroupAI AIGroup() { return *cast(InterpGroupAI*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bSavedNoEncroachCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
		bool bSavedNoEncroachCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	}
}
