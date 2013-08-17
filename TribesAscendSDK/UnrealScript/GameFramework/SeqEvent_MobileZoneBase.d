module UnrealScript.GameFramework.SeqEvent_MobileZoneBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.SeqEvent_MobileBase;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface SeqEvent_MobileZoneBase : SeqEvent_MobileBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqEvent_MobileZoneBase")()); }
	private static __gshared SeqEvent_MobileZoneBase mDefaultProperties;
	@property final static SeqEvent_MobileZoneBase DefaultProperties() { mixin(MGDPC!(SeqEvent_MobileZoneBase, "SeqEvent_MobileZoneBase GameFramework.Default__SeqEvent_MobileZoneBase")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mAddToMobileInput;
		public @property static final ScriptFunction AddToMobileInput() { mixin(MGF!("mAddToMobileInput", "Function GameFramework.SeqEvent_MobileZoneBase.AddToMobileInput")()); }
	}
	@property final auto ref ScriptString TargetZoneName() { mixin(MGPC!(ScriptString, 256)()); }
	final void AddToMobileInput(MobilePlayerInput MPI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = MPI;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToMobileInput, params.ptr, cast(void*)0);
	}
}
