module UnrealScript.TribesGame.TrAttachment_PrismMine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_PrismMine : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_PrismMine")()); }
	private static __gshared TrAttachment_PrismMine mDefaultProperties;
	@property final static TrAttachment_PrismMine DefaultProperties() { mixin(MGDPC!(TrAttachment_PrismMine, "TrAttachment_PrismMine TribesGame.Default__TrAttachment_PrismMine")()); }
}
