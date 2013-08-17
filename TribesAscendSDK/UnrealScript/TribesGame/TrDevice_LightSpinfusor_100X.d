module UnrealScript.TribesGame.TrDevice_LightSpinfusor_100X;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Spinfusor;

extern(C++) interface TrDevice_LightSpinfusor_100X : TrDevice_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_LightSpinfusor_100X")); }
	private static __gshared TrDevice_LightSpinfusor_100X mDefaultProperties;
	@property final static TrDevice_LightSpinfusor_100X DefaultProperties() { mixin(MGDPC("TrDevice_LightSpinfusor_100X", "TrDevice_LightSpinfusor_100X TribesGame.Default__TrDevice_LightSpinfusor_100X")); }
}
