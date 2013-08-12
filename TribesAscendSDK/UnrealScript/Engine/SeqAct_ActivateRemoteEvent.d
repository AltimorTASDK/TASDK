module UnrealScript.Engine.SeqAct_ActivateRemoteEvent;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ActivateRemoteEvent : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ActivateRemoteEvent")); }
	private static __gshared SeqAct_ActivateRemoteEvent mDefaultProperties;
	@property final static SeqAct_ActivateRemoteEvent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_ActivateRemoteEvent)("SeqAct_ActivateRemoteEvent Engine.Default__SeqAct_ActivateRemoteEvent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_ActivateRemoteEvent.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 236); }
			Actor Instigator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 232); }
		}
		bool bStatusIsOk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
		bool bStatusIsOk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
