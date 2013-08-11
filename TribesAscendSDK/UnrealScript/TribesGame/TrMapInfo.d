module UnrealScript.TribesGame.TrMapInfo;

import ScriptClasses;
import UnrealScript.TribesGame.TrMapMusicInfo;
import UnrealScript.TribesGame.TrInvalidDeployableVolume;
import UnrealScript.UDKBase.UDKMapInfo;

extern(C++) interface TrMapInfo : UDKMapInfo
{
	public @property final auto ref ScriptName m_DefaultPhysicalMaterialName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref ScriptClass m_WeatherEffect() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptArray!(TrInvalidDeployableVolume) m_BEInvalidDeployableVolumes() { return *cast(ScriptArray!(TrInvalidDeployableVolume)*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref ScriptArray!(TrInvalidDeployableVolume) m_DSInvalidDeployableVolumes() { return *cast(ScriptArray!(TrInvalidDeployableVolume)*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ScriptArray!(TrInvalidDeployableVolume) m_NeutralInvalidDeployableVolumes() { return *cast(ScriptArray!(TrInvalidDeployableVolume)*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref TrMapMusicInfo m_MapMusicInfo() { return *cast(TrMapMusicInfo*)(cast(size_t)cast(void*)this + 64); }
}
