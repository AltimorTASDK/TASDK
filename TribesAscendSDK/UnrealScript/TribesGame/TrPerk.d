module UnrealScript.TribesGame.TrPerk;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrPerk : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPerk")); }
	private static __gshared TrPerk mDefaultProperties;
	@property final static TrPerk DefaultProperties() { mixin(MGDPC("TrPerk", "TrPerk TribesGame.Default__TrPerk")); }
	@property final
	{
		bool bFree() { mixin(MGBPC(2148, 0x1)); }
		bool bFree(bool val) { mixin(MSBPC(2148, 0x1)); }
	}
}
