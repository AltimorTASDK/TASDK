module UnrealScript.Engine.SeqAct_GetLocationAndRotation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetLocationAndRotation : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_GetLocationAndRotation")); }
	private static __gshared SeqAct_GetLocationAndRotation mDefaultProperties;
	@property final static SeqAct_GetLocationAndRotation DefaultProperties() { mixin(MGDPC("SeqAct_GetLocationAndRotation", "SeqAct_GetLocationAndRotation Engine.Default__SeqAct_GetLocationAndRotation")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqAct_GetLocationAndRotation.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		ScriptName SocketOrBoneName() { mixin(MGPC("ScriptName", 268)); }
		Vector Rotation() { mixin(MGPC("Vector", 256)); }
		Vector RotationVector() { mixin(MGPC("Vector", 244)); }
		Vector Location() { mixin(MGPC("Vector", 232)); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
