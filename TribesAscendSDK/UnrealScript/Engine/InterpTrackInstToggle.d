module UnrealScript.Engine.InterpTrackInstToggle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.InterpTrackToggle;

extern(C++) interface InterpTrackInstToggle : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstToggle")()); }
	private static __gshared InterpTrackInstToggle mDefaultProperties;
	@property final static InterpTrackInstToggle DefaultProperties() { mixin(MGDPC!(InterpTrackInstToggle, "InterpTrackInstToggle Engine.Default__InterpTrackInstToggle")()); }
	@property final
	{
		auto ref
		{
			float LastUpdatePosition() { mixin(MGPC!(float, 64)()); }
			InterpTrackToggle.ETrackToggleAction Action() { mixin(MGPC!(InterpTrackToggle.ETrackToggleAction, 60)()); }
		}
		bool bSavedActiveState() { mixin(MGBPC!(68, 0x1)()); }
		bool bSavedActiveState(bool val) { mixin(MSBPC!(68, 0x1)()); }
	}
}
