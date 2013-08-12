module UnrealScript.TribesGame.TrAttachment_StickyGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_StickyGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_StickyGrenade")); }
	private static __gshared TrAttachment_StickyGrenade mDefaultProperties;
	@property final static TrAttachment_StickyGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_StickyGrenade)("TrAttachment_StickyGrenade TribesGame.Default__TrAttachment_StickyGrenade")); }
}
