module UnrealScript.TribesGame.TrAttachment_PlasmaCannon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_PlasmaCannon : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_PlasmaCannon")()); }
	private static __gshared TrAttachment_PlasmaCannon mDefaultProperties;
	@property final static TrAttachment_PlasmaCannon DefaultProperties() { mixin(MGDPC!(TrAttachment_PlasmaCannon, "TrAttachment_PlasmaCannon TribesGame.Default__TrAttachment_PlasmaCannon")()); }
}
