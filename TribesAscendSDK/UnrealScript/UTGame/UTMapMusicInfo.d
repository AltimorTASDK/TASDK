module UnrealScript.UTGame.UTMapMusicInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKMapMusicInfo;

extern(C++) interface UTMapMusicInfo : UDKMapMusicInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTMapMusicInfo")()); }
	private static __gshared UTMapMusicInfo mDefaultProperties;
	@property final static UTMapMusicInfo DefaultProperties() { mixin(MGDPC!(UTMapMusicInfo, "UTMapMusicInfo UTGame.Default__UTMapMusicInfo")()); }
}
