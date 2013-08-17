module UnrealScript.GameFramework.SeqEvent_MobileMotion;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.SeqEvent_MobileBase;

extern(C++) interface SeqEvent_MobileMotion : SeqEvent_MobileBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqEvent_MobileMotion")()); }
	private static __gshared SeqEvent_MobileMotion mDefaultProperties;
	@property final static SeqEvent_MobileMotion DefaultProperties() { mixin(MGDPC!(SeqEvent_MobileMotion, "SeqEvent_MobileMotion GameFramework.Default__SeqEvent_MobileMotion")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function GameFramework.SeqEvent_MobileMotion.GetObjClassVersion")()); }
	}
	@property final auto ref
	{
		float DeltaYaw() { mixin(MGPC!(float, 276)()); }
		float DeltaPitch() { mixin(MGPC!(float, 272)()); }
		float DeltaRoll() { mixin(MGPC!(float, 268)()); }
		float Yaw() { mixin(MGPC!(float, 264)()); }
		float Pitch() { mixin(MGPC!(float, 260)()); }
		float Roll() { mixin(MGPC!(float, 256)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
