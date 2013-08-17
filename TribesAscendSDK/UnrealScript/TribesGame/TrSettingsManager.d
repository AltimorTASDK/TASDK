module UnrealScript.TribesGame.TrSettingsManager;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSettingsManager")()); }
	private static __gshared TrSettingsManager mDefaultProperties;
	@property final static TrSettingsManager DefaultProperties() { mixin(MGDPC!(TrSettingsManager, "TrSettingsManager TribesGame.Default__TrSettingsManager")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.TrSettingsManager.Initialize")()); }
	}
	@property final auto ref
	{
		TrRegionSettings RegionSettings() { mixin(MGPC!("TrRegionSettings", 76)()); }
		TrAudioSettings AudioSettings() { mixin(MGPC!("TrAudioSettings", 68)()); }
		TrControlSettings ControlSettings() { mixin(MGPC!("TrControlSettings", 80)()); }
		TrKeyBindings KeyBindings() { mixin(MGPC!("TrKeyBindings", 64)()); }
		TrHUDSettings HUDSettings() { mixin(MGPC!("TrHUDSettings", 60)()); }
		TrVideoSettings VideoSettings() { mixin(MGPC!("TrVideoSettings", 72)()); }
		GFxTrMenuMoviePlayer MP() { mixin(MGPC!("GFxTrMenuMoviePlayer", 84)()); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
