module UnrealScript.TribesGame.TrDevice_SpinfusorD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Spinfusor;

extern(C++) interface TrDevice_SpinfusorD : TrDevice_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_SpinfusorD")); }
	private static __gshared TrDevice_SpinfusorD mDefaultProperties;
	@property final static TrDevice_SpinfusorD DefaultProperties() { mixin(MGDPC("TrDevice_SpinfusorD", "TrDevice_SpinfusorD TribesGame.Default__TrDevice_SpinfusorD")); }
}
