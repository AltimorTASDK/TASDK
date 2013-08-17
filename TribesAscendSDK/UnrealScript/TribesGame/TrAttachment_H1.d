module UnrealScript.TribesGame.TrAttachment_H1;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_H1 : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_H1")()); }
	private static __gshared TrAttachment_H1 mDefaultProperties;
	@property final static TrAttachment_H1 DefaultProperties() { mixin(MGDPC!(TrAttachment_H1, "TrAttachment_H1 TribesGame.Default__TrAttachment_H1")()); }
}
