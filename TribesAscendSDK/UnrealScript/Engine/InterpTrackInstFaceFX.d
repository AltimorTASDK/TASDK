module UnrealScript.Engine.InterpTrackInstFaceFX;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstFaceFX : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackInstFaceFX")); }
	private static __gshared InterpTrackInstFaceFX mDefaultProperties;
	@property final static InterpTrackInstFaceFX DefaultProperties() { mixin(MGDPC("InterpTrackInstFaceFX", "InterpTrackInstFaceFX Engine.Default__InterpTrackInstFaceFX")); }
	@property final
	{
		@property final auto ref float LastUpdatePosition() { mixin(MGPC("float", 64)); }
		bool bFirstUpdate() { mixin(MGBPC(60, 0x1)); }
		bool bFirstUpdate(bool val) { mixin(MSBPC(60, 0x1)); }
	}
}
