module UnrealScript.Engine.SeqAct_Trace;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Trace : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_Trace")()); }
	private static __gshared SeqAct_Trace mDefaultProperties;
	@property final static SeqAct_Trace DefaultProperties() { mixin(MGDPC!(SeqAct_Trace, "SeqAct_Trace Engine.Default__SeqAct_Trace")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_Trace.GetObjClassVersion")()); }
	}
	@property final
	{
		auto ref
		{
			Vector HitLocation() { mixin(MGPC!(Vector, 280)()); }
			float Distance() { mixin(MGPC!(float, 276)()); }
			UObject HitObject() { mixin(MGPC!(UObject, 272)()); }
			Vector EndOffset() { mixin(MGPC!(Vector, 260)()); }
			Vector StartOffset() { mixin(MGPC!(Vector, 248)()); }
			Vector TraceExtent() { mixin(MGPC!(Vector, 236)()); }
		}
		bool bTraceWorld() { mixin(MGBPC!(232, 0x2)()); }
		bool bTraceWorld(bool val) { mixin(MSBPC!(232, 0x2)()); }
		bool bTraceActors() { mixin(MGBPC!(232, 0x1)()); }
		bool bTraceActors(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
