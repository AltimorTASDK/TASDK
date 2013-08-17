module UnrealScript.Engine.SeqAct_SetVelocity;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetVelocity : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetVelocity")()); }
	private static __gshared SeqAct_SetVelocity mDefaultProperties;
	@property final static SeqAct_SetVelocity DefaultProperties() { mixin(MGDPC!(SeqAct_SetVelocity, "SeqAct_SetVelocity Engine.Default__SeqAct_SetVelocity")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_SetVelocity.GetObjClassVersion")()); }
	}
	@property final
	{
		auto ref
		{
			float VelocityMag() { mixin(MGPC!("float", 244)()); }
			Vector VelocityDir() { mixin(MGPC!("Vector", 232)()); }
		}
		bool bVelocityRelativeToActorRotation() { mixin(MGBPC!(248, 0x1)()); }
		bool bVelocityRelativeToActorRotation(bool val) { mixin(MSBPC!(248, 0x1)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
