module UnrealScript.TribesGame.TrSettingsManager;

import ScriptClasses;
import UnrealScript.TribesGame.TrRegionSettings;
import UnrealScript.TribesGame.TrAudioSettings;
import UnrealScript.TribesGame.TrKeyBindings;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrHUDSettings;
import UnrealScript.TribesGame.TrVideoSettings;
import UnrealScript.TribesGame.GFxTrMenuMoviePlayer;
import UnrealScript.TribesGame.TrControlSettings;

extern(C++) interface TrSettingsManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSettingsManager")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSettingsManager.Initialize")); }
	}
	@property final auto ref
	{
		TrRegionSettings RegionSettings() { return *cast(TrRegionSettings*)(cast(size_t)cast(void*)this + 76); }
		TrAudioSettings AudioSettings() { return *cast(TrAudioSettings*)(cast(size_t)cast(void*)this + 68); }
		TrControlSettings ControlSettings() { return *cast(TrControlSettings*)(cast(size_t)cast(void*)this + 80); }
		TrKeyBindings KeyBindings() { return *cast(TrKeyBindings*)(cast(size_t)cast(void*)this + 64); }
		TrHUDSettings HUDSettings() { return *cast(TrHUDSettings*)(cast(size_t)cast(void*)this + 60); }
		TrVideoSettings VideoSettings() { return *cast(TrVideoSettings*)(cast(size_t)cast(void*)this + 72); }
		GFxTrMenuMoviePlayer MP() { return *cast(GFxTrMenuMoviePlayer*)(cast(size_t)cast(void*)this + 84); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
