module UnrealScript.Engine.SeqEvent_LOS;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_LOS : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_LOS")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_LOS.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			float TriggerDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			float ScreenCenterDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
		}
		bool bCheckForObstructions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x1) != 0; }
		bool bCheckForObstructions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x1; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
