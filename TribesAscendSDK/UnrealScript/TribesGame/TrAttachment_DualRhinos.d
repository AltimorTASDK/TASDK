module UnrealScript.TribesGame.TrAttachment_DualRhinos;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_DualRhinos : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_DualRhinos")()); }
	private static __gshared TrAttachment_DualRhinos mDefaultProperties;
	@property final static TrAttachment_DualRhinos DefaultProperties() { mixin(MGDPC!(TrAttachment_DualRhinos, "TrAttachment_DualRhinos TribesGame.Default__TrAttachment_DualRhinos")()); }
}
