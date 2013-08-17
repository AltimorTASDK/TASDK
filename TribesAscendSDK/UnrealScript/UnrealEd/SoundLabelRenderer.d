module UnrealScript.UnrealEd.SoundLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface SoundLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.SoundLabelRenderer")()); }
	private static __gshared SoundLabelRenderer mDefaultProperties;
	@property final static SoundLabelRenderer DefaultProperties() { mixin(MGDPC!(SoundLabelRenderer, "SoundLabelRenderer UnrealEd.Default__SoundLabelRenderer")()); }
}
