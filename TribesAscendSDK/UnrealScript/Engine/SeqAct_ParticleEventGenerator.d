module UnrealScript.Engine.SeqAct_ParticleEventGenerator;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ParticleEventGenerator : SequenceAction
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) EventNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 240); }
			Vector EventNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 292); }
			Vector EventVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 280); }
			Vector EventDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 268); }
			Vector EventLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 256); }
			float EventTime() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			Actor Instigator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bUseEmitterLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
		bool bUseEmitterLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25801], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
