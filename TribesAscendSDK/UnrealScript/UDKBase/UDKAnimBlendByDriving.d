module UnrealScript.UDKBase.UDKAnimBlendByDriving;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface UDKAnimBlendByDriving : AnimNodeBlend
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKAnimBlendByDriving")); }
	private static __gshared UDKAnimBlendByDriving mDefaultProperties;
	@property final static UDKAnimBlendByDriving DefaultProperties() { mixin(MGDPC("UDKAnimBlendByDriving", "UDKAnimBlendByDriving UDKBase.Default__UDKAnimBlendByDriving")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mUpdateDrivingState;
		public @property static final ScriptFunction UpdateDrivingState() { mixin(MGF("mUpdateDrivingState", "Function UDKBase.UDKAnimBlendByDriving.UpdateDrivingState")); }
	}
	final void UpdateDrivingState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDrivingState, cast(void*)0, cast(void*)0);
	}
}
