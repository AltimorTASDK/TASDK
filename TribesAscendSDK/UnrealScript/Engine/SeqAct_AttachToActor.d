module UnrealScript.Engine.SeqAct_AttachToActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AttachToActor : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_AttachToActor")()); }
	private static __gshared SeqAct_AttachToActor mDefaultProperties;
	@property final static SeqAct_AttachToActor DefaultProperties() { mixin(MGDPC!(SeqAct_AttachToActor, "SeqAct_AttachToActor Engine.Default__SeqAct_AttachToActor")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_AttachToActor.GetObjClassVersion")()); }
	}
	@property final
	{
		auto ref
		{
			Rotator RelativeRotation() { mixin(MGPC!("Rotator", 256)()); }
			Vector RelativeOffset() { mixin(MGPC!("Vector", 244)()); }
			ScriptName BoneName() { mixin(MGPC!("ScriptName", 236)()); }
		}
		bool bDetach() { mixin(MGBPC!(232, 0x1)()); }
		bool bDetach(bool val) { mixin(MSBPC!(232, 0x1)()); }
		bool bHardAttach() { mixin(MGBPC!(232, 0x2)()); }
		bool bHardAttach(bool val) { mixin(MSBPC!(232, 0x2)()); }
		bool bUseRelativeOffset() { mixin(MGBPC!(232, 0x4)()); }
		bool bUseRelativeOffset(bool val) { mixin(MSBPC!(232, 0x4)()); }
		bool bUseRelativeRotation() { mixin(MGBPC!(232, 0x8)()); }
		bool bUseRelativeRotation(bool val) { mixin(MSBPC!(232, 0x8)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
