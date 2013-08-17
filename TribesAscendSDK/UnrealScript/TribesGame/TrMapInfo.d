module UnrealScript.TribesGame.TrMapInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrMapMusicInfo;
import UnrealScript.TribesGame.TrInvalidDeployableVolume;
import UnrealScript.UDKBase.UDKMapInfo;

extern(C++) interface TrMapInfo : UDKMapInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrMapInfo")()); }
	private static __gshared TrMapInfo mDefaultProperties;
	@property final static TrMapInfo DefaultProperties() { mixin(MGDPC!(TrMapInfo, "TrMapInfo TribesGame.Default__TrMapInfo")()); }
	@property final auto ref
	{
		ScriptName m_DefaultPhysicalMaterialName() { mixin(MGPC!(ScriptName, 104)()); }
		ScriptClass m_WeatherEffect() { mixin(MGPC!(ScriptClass, 112)()); }
		ScriptArray!(TrInvalidDeployableVolume) m_BEInvalidDeployableVolumes() { mixin(MGPC!(ScriptArray!(TrInvalidDeployableVolume), 68)()); }
		ScriptArray!(TrInvalidDeployableVolume) m_DSInvalidDeployableVolumes() { mixin(MGPC!(ScriptArray!(TrInvalidDeployableVolume), 80)()); }
		ScriptArray!(TrInvalidDeployableVolume) m_NeutralInvalidDeployableVolumes() { mixin(MGPC!(ScriptArray!(TrInvalidDeployableVolume), 92)()); }
		TrMapMusicInfo m_MapMusicInfo() { mixin(MGPC!(TrMapMusicInfo, 64)()); }
	}
}
