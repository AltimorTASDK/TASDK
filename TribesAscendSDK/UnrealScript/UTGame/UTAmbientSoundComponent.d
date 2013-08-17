module UnrealScript.UTGame.UTAmbientSoundComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AudioComponent;

extern(C++) interface UTAmbientSoundComponent : AudioComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAmbientSoundComponent")); }
	private static __gshared UTAmbientSoundComponent mDefaultProperties;
	@property final static UTAmbientSoundComponent DefaultProperties() { mixin(MGDPC("UTAmbientSoundComponent", "UTAmbientSoundComponent UTGame.Default__UTAmbientSoundComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOcclusionChanged;
		public @property static final ScriptFunction OcclusionChanged() { mixin(MGF("mOcclusionChanged", "Function UTGame.UTAmbientSoundComponent.OcclusionChanged")); }
	}
	final void OcclusionChanged(bool bNowOccluded)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowOccluded;
		(cast(ScriptObject)this).ProcessEvent(Functions.OcclusionChanged, params.ptr, cast(void*)0);
	}
}
