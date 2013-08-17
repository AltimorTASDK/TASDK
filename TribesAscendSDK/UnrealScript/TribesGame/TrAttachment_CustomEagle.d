module UnrealScript.TribesGame.TrAttachment_CustomEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_CustomEagle : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_CustomEagle")()); }
	private static __gshared TrAttachment_CustomEagle mDefaultProperties;
	@property final static TrAttachment_CustomEagle DefaultProperties() { mixin(MGDPC!(TrAttachment_CustomEagle, "TrAttachment_CustomEagle TribesGame.Default__TrAttachment_CustomEagle")()); }
}
