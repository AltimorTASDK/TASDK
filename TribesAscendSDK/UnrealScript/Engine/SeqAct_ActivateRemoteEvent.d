module UnrealScript.Engine.SeqAct_ActivateRemoteEvent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ActivateRemoteEvent : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_ActivateRemoteEvent")()); }
	private static __gshared SeqAct_ActivateRemoteEvent mDefaultProperties;
	@property final static SeqAct_ActivateRemoteEvent DefaultProperties() { mixin(MGDPC!(SeqAct_ActivateRemoteEvent, "SeqAct_ActivateRemoteEvent Engine.Default__SeqAct_ActivateRemoteEvent")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_ActivateRemoteEvent.GetObjClassVersion")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptName EventName() { mixin(MGPC!(ScriptName, 236)()); }
			Actor Instigator() { mixin(MGPC!(Actor, 232)()); }
		}
		bool bStatusIsOk() { mixin(MGBPC!(244, 0x1)()); }
		bool bStatusIsOk(bool val) { mixin(MSBPC!(244, 0x1)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
