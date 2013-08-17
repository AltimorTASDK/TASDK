module UnrealScript.Engine.SeqAct_GetVelocity;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetVelocity : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_GetVelocity")); }
	private static __gshared SeqAct_GetVelocity mDefaultProperties;
	@property final static SeqAct_GetVelocity DefaultProperties() { mixin(MGDPC("SeqAct_GetVelocity", "SeqAct_GetVelocity Engine.Default__SeqAct_GetVelocity")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqAct_GetVelocity.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		Vector VelocityVect() { mixin(MGPC("Vector", 236)); }
		float VelocityMag() { mixin(MGPC("float", 232)); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
