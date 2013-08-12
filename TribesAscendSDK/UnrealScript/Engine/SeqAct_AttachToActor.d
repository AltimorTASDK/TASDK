module UnrealScript.Engine.SeqAct_AttachToActor;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AttachToActor : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_AttachToActor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_AttachToActor.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			Rotator RelativeRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 256); }
			Vector RelativeOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 244); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bDetach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bDetach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
		bool bHardAttach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
		bool bHardAttach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
		bool bUseRelativeOffset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x4) != 0; }
		bool bUseRelativeOffset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x4; } return val; }
		bool bUseRelativeRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x8) != 0; }
		bool bUseRelativeRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x8; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
