module UnrealScript.TribesGame.TrAttachment_X1Rifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAttachment_ChainGun;

extern(C++) interface TrAttachment_X1Rifle : TrAttachment_ChainGun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_X1Rifle")); }
	private static __gshared TrAttachment_X1Rifle mDefaultProperties;
	@property final static TrAttachment_X1Rifle DefaultProperties() { mixin(MGDPC("TrAttachment_X1Rifle", "TrAttachment_X1Rifle TribesGame.Default__TrAttachment_X1Rifle")); }
}
