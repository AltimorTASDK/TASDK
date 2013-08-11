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
	public @property final auto ref TrRegionSettings RegionSettings() { return *cast(TrRegionSettings*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref TrAudioSettings AudioSettings() { return *cast(TrAudioSettings*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref TrControlSettings ControlSettings() { return *cast(TrControlSettings*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref TrKeyBindings KeyBindings() { return *cast(TrKeyBindings*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref TrHUDSettings HUDSettings() { return *cast(TrHUDSettings*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref TrVideoSettings VideoSettings() { return *cast(TrVideoSettings*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref GFxTrMenuMoviePlayer MP() { return *cast(GFxTrMenuMoviePlayer*)(cast(size_t)cast(void*)this + 84); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112354], cast(void*)0, cast(void*)0);
	}
}
