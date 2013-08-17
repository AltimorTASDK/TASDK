module UnrealScript.TribesGame.TrAttachment_ConcussionGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ConcussionGrenade_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_ConcussionGrenade_MKD")()); }
	private static __gshared TrAttachment_ConcussionGrenade_MKD mDefaultProperties;
	@property final static TrAttachment_ConcussionGrenade_MKD DefaultProperties() { mixin(MGDPC!(TrAttachment_ConcussionGrenade_MKD, "TrAttachment_ConcussionGrenade_MKD TribesGame.Default__TrAttachment_ConcussionGrenade_MKD")()); }
}
