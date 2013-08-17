module UnrealScript.UTGame.GFxMinimapHud;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGameReplicationInfo;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.UTGame.GFxMinimap;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxMinimapHud : GFxMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.GFxMinimapHud")); }
	private static __gshared GFxMinimapHud mDefaultProperties;
	@property final static GFxMinimapHud DefaultProperties() { mixin(MGDPC("GFxMinimapHud", "GFxMinimapHud UTGame.Default__GFxMinimapHud")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mregisterMiniMapView;
			ScriptFunction mSetAmmoCountTF;
			ScriptFunction mCreateMessageRow;
			ScriptFunction mInitMessageRow;
			ScriptFunction mInit;
			ScriptFunction mLoadHeEn;
			ScriptFunction mUpdateHealth;
			ScriptFunction mUpdateEnergy;
			ScriptFunction mFormatTime;
			ScriptFunction mClearStats;
			ScriptFunction mRemoveMessage;
			ScriptFunction mAddMessage;
			ScriptFunction mUpdateGameHUD;
			ScriptFunction mTickHud;
			ScriptFunction mToggleCrosshair;
			ScriptFunction mMinimapZoomOut;
			ScriptFunction mMinimapZoomIn;
			ScriptFunction mDisplayHit;
			ScriptFunction mShowMultiKill;
			ScriptFunction mSetCenterText;
			ScriptFunction mGetRank;
			ScriptFunction mAddDeathMessage;
		}
		public @property static final
		{
			ScriptFunction registerMiniMapView() { mixin(MGF("mregisterMiniMapView", "Function UTGame.GFxMinimapHud.registerMiniMapView")); }
			ScriptFunction SetAmmoCountTF() { mixin(MGF("mSetAmmoCountTF", "Function UTGame.GFxMinimapHud.SetAmmoCountTF")); }
			ScriptFunction CreateMessageRow() { mixin(MGF("mCreateMessageRow", "Function UTGame.GFxMinimapHud.CreateMessageRow")); }
			ScriptFunction InitMessageRow() { mixin(MGF("mInitMessageRow", "Function UTGame.GFxMinimapHud.InitMessageRow")); }
			ScriptFunction Init() { mixin(MGF("mInit", "Function UTGame.GFxMinimapHud.Init")); }
			ScriptFunction LoadHeEn() { mixin(MGF("mLoadHeEn", "Function UTGame.GFxMinimapHud.LoadHeEn")); }
			ScriptFunction UpdateHealth() { mixin(MGF("mUpdateHealth", "Function UTGame.GFxMinimapHud.UpdateHealth")); }
			ScriptFunction UpdateEnergy() { mixin(MGF("mUpdateEnergy", "Function UTGame.GFxMinimapHud.UpdateEnergy")); }
			ScriptFunction FormatTime() { mixin(MGF("mFormatTime", "Function UTGame.GFxMinimapHud.FormatTime")); }
			ScriptFunction ClearStats() { mixin(MGF("mClearStats", "Function UTGame.GFxMinimapHud.ClearStats")); }
			ScriptFunction RemoveMessage() { mixin(MGF("mRemoveMessage", "Function UTGame.GFxMinimapHud.RemoveMessage")); }
			ScriptFunction AddMessage() { mixin(MGF("mAddMessage", "Function UTGame.GFxMinimapHud.AddMessage")); }
			ScriptFunction UpdateGameHUD() { mixin(MGF("mUpdateGameHUD", "Function UTGame.GFxMinimapHud.UpdateGameHUD")); }
			ScriptFunction TickHud() { mixin(MGF("mTickHud", "Function UTGame.GFxMinimapHud.TickHud")); }
			ScriptFunction ToggleCrosshair() { mixin(MGF("mToggleCrosshair", "Function UTGame.GFxMinimapHud.ToggleCrosshair")); }
			ScriptFunction MinimapZoomOut() { mixin(MGF("mMinimapZoomOut", "Function UTGame.GFxMinimapHud.MinimapZoomOut")); }
			ScriptFunction MinimapZoomIn() { mixin(MGF("mMinimapZoomIn", "Function UTGame.GFxMinimapHud.MinimapZoomIn")); }
			ScriptFunction DisplayHit() { mixin(MGF("mDisplayHit", "Function UTGame.GFxMinimapHud.DisplayHit")); }
			ScriptFunction ShowMultiKill() { mixin(MGF("mShowMultiKill", "Function UTGame.GFxMinimapHud.ShowMultiKill")); }
			ScriptFunction SetCenterText() { mixin(MGF("mSetCenterText", "Function UTGame.GFxMinimapHud.SetCenterText")); }
			ScriptFunction GetRank() { mixin(MGF("mGetRank", "Function UTGame.GFxMinimapHud.GetRank")); }
			ScriptFunction AddDeathMessage() { mixin(MGF("mAddDeathMessage", "Function UTGame.GFxMinimapHud.AddDeathMessage")); }
		}
	}
	struct MessageRow
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.GFxMinimapHud.MessageRow")); }
		@property final auto ref
		{
			int Y() { mixin(MGPS("int", 12)); }
			float StartFadeTime() { mixin(MGPS("float", 8)); }
			GFxObject TF() { mixin(MGPS("GFxObject", 4)); }
			GFxObject MC() { mixin(MGPS("GFxObject", 0)); }
		}
	}
	struct HeEnDisplay
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.GFxMinimapHud.HeEnDisplay")); }
		@property final
		{
			auto ref
			{
				GFxObject EnergyBarMC() { mixin(MGPS("GFxObject", 32)); }
				GFxObject EnergyTF() { mixin(MGPS("GFxObject", 28)); }
				GFxObject HealthCritMC() { mixin(MGPS("GFxObject", 20)); }
				GFxObject HealthNormMC() { mixin(MGPS("GFxObject", 16)); }
				GFxObject HealthBarMC() { mixin(MGPS("GFxObject", 12)); }
				GFxObject HealthTF() { mixin(MGPS("GFxObject", 8)); }
				float LastEnergy() { mixin(MGPS("float", 4)); }
				float LastHealth() { mixin(MGPS("float", 0)); }
			}
			bool HealthNormOn() { mixin(MGBPS(24, 0x1)); }
			bool HealthNormOn(bool val) { mixin(MSBPS(24, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			float Radius() { mixin(MGPC("float", 388)); }
			float NormalZoomf() { mixin(MGPC("float", 396)); }
			float CurZoomf() { mixin(MGPC("float", 392)); }
			ScriptArray!(GFxMinimapHud.MessageRow) Messages() { mixin(MGPC("ScriptArray!(GFxMinimapHud.MessageRow)", 484)); }
			ScriptArray!(GFxMinimapHud.MessageRow) FreeMessages() { mixin(MGPC("ScriptArray!(GFxMinimapHud.MessageRow)", 496)); }
			UTGameReplicationInfo GRI() { mixin(MGPC("UTGameReplicationInfo", 628)); }
			UTPlayerReplicationInfo LastFlagCarrier() { mixin(MGPC("UTPlayerReplicationInfo", 620)); }
			UTPlayerReplicationInfo LastEnemy() { mixin(MGPC("UTPlayerReplicationInfo", 616)); }
			ubyte LastFlagHome() { mixin(MGPC("ubyte", 612)); }
			int LastScore() { mixin(MGPC("int", 604)); }
			int LastAmmoCount() { mixin(MGPC("int", 600)); }
			UTWeapon LastWeapon() { mixin(MGPC("UTWeapon", 596)); }
			UTVehicle LastVehicle() { mixin(MGPC("UTVehicle", 592)); }
			GFxObject MultiKillMC() { mixin(MGPC("GFxObject", 588)); }
			GFxObject MultiKillMsg_TF() { mixin(MGPC("GFxObject", 584)); }
			GFxObject MultiKillN_TF() { mixin(MGPC("GFxObject", 580)); }
			GFxObject HitLocMC() { mixin(MGPC("GFxObject", 548)); }
			GFxObject CreditsAndStreaksMC() { mixin(MGPC("GFxObject", 544)); }
			GFxObject OffhandsAndFlagMC() { mixin(MGPC("GFxObject", 540)); }
			GFxObject EnemyNameTF() { mixin(MGPC("GFxObject", 536)); }
			GFxObject CenterTextTF() { mixin(MGPC("GFxObject", 532)); }
			GFxObject CenterTextMC() { mixin(MGPC("GFxObject", 528)); }
			GFxObject TimeTF() { mixin(MGPC("GFxObject", 524)); }
			GFxObject TeamStatsMC() { mixin(MGPC("GFxObject", 520)); }
			GFxObject PlayerStatsMC() { mixin(MGPC("GFxObject", 516)); }
			int NumMessages() { mixin(MGPC("int", 512)); }
			float MessageHeight() { mixin(MGPC("float", 508)); }
			GFxObject LogMC() { mixin(MGPC("GFxObject", 480)); }
			GFxMinimapHud.HeEnDisplay VehicleHE() { mixin(MGPC("GFxMinimapHud.HeEnDisplay", 444)); }
			GFxMinimapHud.HeEnDisplay PlayerHE() { mixin(MGPC("GFxMinimapHud.HeEnDisplay", 408)); }
			float MinZoomf() { mixin(MGPC("float", 404)); }
			float MaxZoomf() { mixin(MGPC("float", 400)); }
			GFxMinimap Minimap() { mixin(MGPC("GFxMinimap", 384)); }
			WorldInfo ThisWorld() { mixin(MGPC("WorldInfo", 380)); }
		}
		bool bIsTeamHUD() { mixin(MGBPC(632, 0x1)); }
		bool bIsTeamHUD(bool val) { mixin(MSBPC(632, 0x1)); }
		bool bDrawWeaponCrosshairs() { mixin(MGBPC(632, 0x2)); }
		bool bDrawWeaponCrosshairs(bool val) { mixin(MSBPC(632, 0x2)); }
	}
final:
	void registerMiniMapView(GFxMinimap MC, float R)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxMinimap*)params.ptr = MC;
		*cast(float*)&params[4] = R;
		(cast(ScriptObject)this).ProcessEvent(Functions.registerMiniMapView, params.ptr, cast(void*)0);
	}
	void SetAmmoCountTF(Weapon Wep, ScriptString Ammo)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = Wep;
		*cast(ScriptString*)&params[4] = Ammo;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAmmoCountTF, params.ptr, cast(void*)0);
	}
	GFxObject CreateMessageRow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateMessageRow, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	GFxObject InitMessageRow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMessageRow, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	void Init(LocalPlayer* pPlayer = null)
	{
		ubyte params[4];
		params[] = 0;
		if (pPlayer !is null)
			*cast(LocalPlayer*)params.ptr = *pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	void LoadHeEn(ref GFxMinimapHud.HeEnDisplay pInfo, ScriptString Base)
	{
		ubyte params[48];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = pInfo;
		*cast(ScriptString*)&params[36] = Base;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadHeEn, params.ptr, cast(void*)0);
		pInfo = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	void UpdateHealth(ref GFxMinimapHud.HeEnDisplay pInfo, float NewHealth, float HealthMax)
	{
		ubyte params[44];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = pInfo;
		*cast(float*)&params[36] = NewHealth;
		*cast(float*)&params[40] = HealthMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHealth, params.ptr, cast(void*)0);
		pInfo = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	void UpdateEnergy(ref GFxMinimapHud.HeEnDisplay pInfo, float NewEnergy, float EnergyMax)
	{
		ubyte params[44];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = pInfo;
		*cast(float*)&params[36] = NewEnergy;
		*cast(float*)&params[40] = EnergyMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateEnergy, params.ptr, cast(void*)0);
		pInfo = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	static ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		StaticClass.ProcessEvent(Functions.FormatTime, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void ClearStats(bool* clearScores = null)
	{
		ubyte params[4];
		params[] = 0;
		if (clearScores !is null)
			*cast(bool*)params.ptr = *clearScores;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearStats, params.ptr, cast(void*)0);
	}
	void RemoveMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveMessage, cast(void*)0, cast(void*)0);
	}
	void AddMessage(ScriptString Type, ScriptString msg)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Type;
		*cast(ScriptString*)&params[12] = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMessage, params.ptr, cast(void*)0);
	}
	void UpdateGameHUD(UTPlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGameHUD, params.ptr, cast(void*)0);
	}
	void TickHud(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.TickHud, params.ptr, cast(void*)0);
	}
	void ToggleCrosshair(bool bToggle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bToggle;
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleCrosshair, params.ptr, cast(void*)0);
	}
	void MinimapZoomOut()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MinimapZoomOut, cast(void*)0, cast(void*)0);
	}
	void MinimapZoomIn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MinimapZoomIn, cast(void*)0, cast(void*)0);
	}
	void DisplayHit(Vector HitDir, int Damage, ScriptClass pDamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitDir;
		*cast(int*)&params[12] = Damage;
		*cast(ScriptClass*)&params[16] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayHit, params.ptr, cast(void*)0);
	}
	void ShowMultiKill(int N, ScriptString msg)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = N;
		*cast(ScriptString*)&params[4] = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMultiKill, params.ptr, cast(void*)0);
	}
	void SetCenterText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCenterText, params.ptr, cast(void*)0);
	}
	ScriptString GetRank(PlayerReplicationInfo PRI)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRank, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void AddDeathMessage(PlayerReplicationInfo Killer, PlayerReplicationInfo Killed, ScriptClass Dmg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Killer;
		*cast(PlayerReplicationInfo*)&params[4] = Killed;
		*cast(ScriptClass*)&params[8] = Dmg;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDeathMessage, params.ptr, cast(void*)0);
	}
}
