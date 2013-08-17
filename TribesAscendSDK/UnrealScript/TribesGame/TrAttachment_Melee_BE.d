module UnrealScript.TribesGame.TrAttachment_Melee_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAttachment_Melee;

extern(C++) interface TrAttachment_Melee_BE : TrAttachment_Melee
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_Melee_BE")()); }
	private static __gshared TrAttachment_Melee_BE mDefaultProperties;
	@property final static TrAttachment_Melee_BE DefaultProperties() { mixin(MGDPC!(TrAttachment_Melee_BE, "TrAttachment_Melee_BE TribesGame.Default__TrAttachment_Melee_BE")()); }
}
