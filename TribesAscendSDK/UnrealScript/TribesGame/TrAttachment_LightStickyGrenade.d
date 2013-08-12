module UnrealScript.TribesGame.TrAttachment_LightStickyGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LightStickyGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_LightStickyGrenade")); }
	private static __gshared TrAttachment_LightStickyGrenade mDefaultProperties;
	@property final static TrAttachment_LightStickyGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_LightStickyGrenade)("TrAttachment_LightStickyGrenade TribesGame.Default__TrAttachment_LightStickyGrenade")); }
}
