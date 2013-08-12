module UnrealScript.UnrealEd.SoundLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface SoundLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.SoundLabelRenderer")); }
	private static __gshared SoundLabelRenderer mDefaultProperties;
	@property final static SoundLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundLabelRenderer)("SoundLabelRenderer UnrealEd.Default__SoundLabelRenderer")); }
}
