module UnrealScript.Engine.SeqAct_SetLocation;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetLocation : SeqAct_SetSequenceVariable
{
public extern(D):
	@property final
	{
		auto ref
		{
			UObject Target() { return *cast(UObject*)(cast(size_t)cast(void*)this + 260); }
			Rotator RotationValue() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 248); }
			Vector LocationValue() { return *cast(Vector*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bSetRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
		bool bSetRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
		bool bSetLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bSetLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25891], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
