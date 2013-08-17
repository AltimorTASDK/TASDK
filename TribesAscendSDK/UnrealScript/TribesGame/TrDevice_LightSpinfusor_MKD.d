module UnrealScript.TribesGame.TrDevice_LightSpinfusor_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_LightSpinfusor;

extern(C++) interface TrDevice_LightSpinfusor_MKD : TrDevice_LightSpinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_LightSpinfusor_MKD")); }
	private static __gshared TrDevice_LightSpinfusor_MKD mDefaultProperties;
	@property final static TrDevice_LightSpinfusor_MKD DefaultProperties() { mixin(MGDPC("TrDevice_LightSpinfusor_MKD", "TrDevice_LightSpinfusor_MKD TribesGame.Default__TrDevice_LightSpinfusor_MKD")); }
}
