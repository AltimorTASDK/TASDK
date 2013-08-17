module UnrealScript.Engine.SeqCond_GetServerType;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_GetServerType : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqCond_GetServerType")()); }
	private static __gshared SeqCond_GetServerType mDefaultProperties;
	@property final static SeqCond_GetServerType DefaultProperties() { mixin(MGDPC!(SeqCond_GetServerType, "SeqCond_GetServerType Engine.Default__SeqCond_GetServerType")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqCond_GetServerType.GetObjClassVersion")()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
