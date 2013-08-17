module UnrealScript.TribesGame.TrAnimNodeBlendBy3pDevice;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.GameFramework.GameSkelCtrl_Recoil;

extern(C++) interface TrAnimNodeBlendBy3pDevice : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnimNodeBlendBy3pDevice")); }
	private static __gshared TrAnimNodeBlendBy3pDevice mDefaultProperties;
	@property final static TrAnimNodeBlendBy3pDevice DefaultProperties() { mixin(MGDPC("TrAnimNodeBlendBy3pDevice", "TrAnimNodeBlendBy3pDevice TribesGame.Default__TrAnimNodeBlendBy3pDevice")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlayIdle;
			ScriptFunction mPlayBuildup;
			ScriptFunction mPlayFire;
			ScriptFunction mPlayPutaway;
			ScriptFunction mPlayRetrieve;
			ScriptFunction mPlayReload;
			ScriptFunction mPlayOffhand;
		}
		public @property static final
		{
			ScriptFunction PlayIdle() { mixin(MGF("mPlayIdle", "Function TribesGame.TrAnimNodeBlendBy3pDevice.PlayIdle")); }
			ScriptFunction PlayBuildup() { mixin(MGF("mPlayBuildup", "Function TribesGame.TrAnimNodeBlendBy3pDevice.PlayBuildup")); }
			ScriptFunction PlayFire() { mixin(MGF("mPlayFire", "Function TribesGame.TrAnimNodeBlendBy3pDevice.PlayFire")); }
			ScriptFunction PlayPutaway() { mixin(MGF("mPlayPutaway", "Function TribesGame.TrAnimNodeBlendBy3pDevice.PlayPutaway")); }
			ScriptFunction PlayRetrieve() { mixin(MGF("mPlayRetrieve", "Function TribesGame.TrAnimNodeBlendBy3pDevice.PlayRetrieve")); }
			ScriptFunction PlayReload() { mixin(MGF("mPlayReload", "Function TribesGame.TrAnimNodeBlendBy3pDevice.PlayReload")); }
			ScriptFunction PlayOffhand() { mixin(MGF("mPlayOffhand", "Function TribesGame.TrAnimNodeBlendBy3pDevice.PlayOffhand")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) m_nmRecoilControlNames() { mixin(MGPC("ScriptArray!(ScriptName)", 296)); }
			ScriptArray!(GameSkelCtrl_Recoil) m_RecoilControls() { mixin(MGPC("ScriptArray!(GameSkelCtrl_Recoil)", 308)); }
			ScriptName m_StandardReloadAnimName() { mixin(MGPC("ScriptName", 352)); }
			ScriptName m_SkiingReloadName() { mixin(MGPC("ScriptName", 344)); }
			ScriptName m_StandardFireAnimName() { mixin(MGPC("ScriptName", 336)); }
			ScriptName m_SkiingFireName() { mixin(MGPC("ScriptName", 328)); }
			float m_fRefireTimePreview() { mixin(MGPC("float", 324)); }
			TrPawn m_TrPawn() { mixin(MGPC("TrPawn", 292)); }
		}
		bool m_bCurrentDeviceSupportsAltSkiReloadAnims() { mixin(MGBPC(320, 0x10)); }
		bool m_bCurrentDeviceSupportsAltSkiReloadAnims(bool val) { mixin(MSBPC(320, 0x10)); }
		bool m_bCurrentDeviceSupportsAltSkiFireAnims() { mixin(MGBPC(320, 0x8)); }
		bool m_bCurrentDeviceSupportsAltSkiFireAnims(bool val) { mixin(MSBPC(320, 0x8)); }
		bool m_bScalePutawayRetrieveAnims() { mixin(MGBPC(320, 0x4)); }
		bool m_bScalePutawayRetrieveAnims(bool val) { mixin(MSBPC(320, 0x4)); }
		bool m_bFirePreview() { mixin(MGBPC(320, 0x2)); }
		bool m_bFirePreview(bool val) { mixin(MSBPC(320, 0x2)); }
		bool m_bScaleFireByRefireTime() { mixin(MGBPC(320, 0x1)); }
		bool m_bScaleFireByRefireTime(bool val) { mixin(MSBPC(320, 0x1)); }
	}
final:
	void PlayIdle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayIdle, cast(void*)0, cast(void*)0);
	}
	void PlayBuildup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayBuildup, cast(void*)0, cast(void*)0);
	}
	void PlayFire(float RefireTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = RefireTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFire, params.ptr, cast(void*)0);
	}
	void PlayPutaway(float PutAwayTime, float ForcedRateBuff)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = PutAwayTime;
		*cast(float*)&params[4] = ForcedRateBuff;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayPutaway, params.ptr, cast(void*)0);
	}
	void PlayRetrieve(float RetrieveTime, float ForcedRateBuff)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = RetrieveTime;
		*cast(float*)&params[4] = ForcedRateBuff;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRetrieve, params.ptr, cast(void*)0);
	}
	void PlayReload(float ReloadTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ReloadTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayReload, params.ptr, cast(void*)0);
	}
	void PlayOffhand(ScriptName OffhandAnimName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = OffhandAnimName;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayOffhand, params.ptr, cast(void*)0);
	}
}
