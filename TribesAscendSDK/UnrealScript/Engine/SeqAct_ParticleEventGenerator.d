module UnrealScript.Engine.SeqAct_ParticleEventGenerator;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ParticleEventGenerator : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ParticleEventGenerator")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_ParticleEventGenerator.GetObjClassVersion")); }
	}
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
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
