module UnrealScript.TribesGame.TrAttachment_Melee_MC;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAttachment_Melee;

extern(C++) interface TrAttachment_Melee_MC : TrAttachment_Melee
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_Melee_MC")()); }
	private static __gshared TrAttachment_Melee_MC mDefaultProperties;
	@property final static TrAttachment_Melee_MC DefaultProperties() { mixin(MGDPC!(TrAttachment_Melee_MC, "TrAttachment_Melee_MC TribesGame.Default__TrAttachment_Melee_MC")()); }
}
