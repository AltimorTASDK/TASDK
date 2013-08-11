module UnrealScript.Engine.SeqEvent_ParticleEvent;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_ParticleEvent : SequenceEvent
{
public extern(D):
	enum EParticleEventOutputType : ubyte
	{
		ePARTICLEOUT_Spawn = 0,
		ePARTICLEOUT_Death = 1,
		ePARTICLEOUT_Collision = 2,
		ePARTICLEOUT_Kismet = 3,
		ePARTICLEOUT_MAX = 4,
	}
	@property final
	{
		auto ref
		{
			Vector EventNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 292); }
			float EventParticleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			Vector EventVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 276); }
			float EventEmitterTime() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			Vector EventPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 260); }
			SeqEvent_ParticleEvent.EParticleEventOutputType EventType() { return *cast(SeqEvent_ParticleEvent.EParticleEventOutputType*)(cast(size_t)cast(void*)this + 256); }
		}
		bool UseRelfectedImpactVector() { return (*cast(uint*)(cast(size_t)cast(void*)this + 304) & 0x1) != 0; }
		bool UseRelfectedImpactVector(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 304) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 304) &= ~0x1; } return val; }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26138], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
