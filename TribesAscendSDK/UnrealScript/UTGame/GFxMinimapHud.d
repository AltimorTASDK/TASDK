module UnrealScript.UTGame.GFxMinimapHud;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxMinimapHud")); }
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
			ScriptFunction registerMiniMapView() { return mregisterMiniMapView ? mregisterMiniMapView : (mregisterMiniMapView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.registerMiniMapView")); }
			ScriptFunction SetAmmoCountTF() { return mSetAmmoCountTF ? mSetAmmoCountTF : (mSetAmmoCountTF = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.SetAmmoCountTF")); }
			ScriptFunction CreateMessageRow() { return mCreateMessageRow ? mCreateMessageRow : (mCreateMessageRow = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.CreateMessageRow")); }
			ScriptFunction InitMessageRow() { return mInitMessageRow ? mInitMessageRow : (mInitMessageRow = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.InitMessageRow")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.Init")); }
			ScriptFunction LoadHeEn() { return mLoadHeEn ? mLoadHeEn : (mLoadHeEn = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.LoadHeEn")); }
			ScriptFunction UpdateHealth() { return mUpdateHealth ? mUpdateHealth : (mUpdateHealth = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.UpdateHealth")); }
			ScriptFunction UpdateEnergy() { return mUpdateEnergy ? mUpdateEnergy : (mUpdateEnergy = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.UpdateEnergy")); }
			ScriptFunction FormatTime() { return mFormatTime ? mFormatTime : (mFormatTime = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.FormatTime")); }
			ScriptFunction ClearStats() { return mClearStats ? mClearStats : (mClearStats = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.ClearStats")); }
			ScriptFunction RemoveMessage() { return mRemoveMessage ? mRemoveMessage : (mRemoveMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.RemoveMessage")); }
			ScriptFunction AddMessage() { return mAddMessage ? mAddMessage : (mAddMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.AddMessage")); }
			ScriptFunction UpdateGameHUD() { return mUpdateGameHUD ? mUpdateGameHUD : (mUpdateGameHUD = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.UpdateGameHUD")); }
			ScriptFunction TickHud() { return mTickHud ? mTickHud : (mTickHud = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.TickHud")); }
			ScriptFunction ToggleCrosshair() { return mToggleCrosshair ? mToggleCrosshair : (mToggleCrosshair = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.ToggleCrosshair")); }
			ScriptFunction MinimapZoomOut() { return mMinimapZoomOut ? mMinimapZoomOut : (mMinimapZoomOut = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.MinimapZoomOut")); }
			ScriptFunction MinimapZoomIn() { return mMinimapZoomIn ? mMinimapZoomIn : (mMinimapZoomIn = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.MinimapZoomIn")); }
			ScriptFunction DisplayHit() { return mDisplayHit ? mDisplayHit : (mDisplayHit = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.DisplayHit")); }
			ScriptFunction ShowMultiKill() { return mShowMultiKill ? mShowMultiKill : (mShowMultiKill = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.ShowMultiKill")); }
			ScriptFunction SetCenterText() { return mSetCenterText ? mSetCenterText : (mSetCenterText = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.SetCenterText")); }
			ScriptFunction GetRank() { return mGetRank ? mGetRank : (mGetRank = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.GetRank")); }
			ScriptFunction AddDeathMessage() { return mAddDeathMessage ? mAddDeathMessage : (mAddDeathMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimapHud.AddDeathMessage")); }
		}
	}
	struct MessageRow
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.GFxMinimapHud.MessageRow")); }
		@property final auto ref
		{
			int Y() { return *cast(int*)(cast(size_t)&this + 12); }
			float StartFadeTime() { return *cast(float*)(cast(size_t)&this + 8); }
			GFxObject TF() { return *cast(GFxObject*)(cast(size_t)&this + 4); }
			GFxObject MC() { return *cast(GFxObject*)(cast(size_t)&this + 0); }
		}
	}
	struct HeEnDisplay
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.GFxMinimapHud.HeEnDisplay")); }
		@property final
		{
			auto ref
			{
				GFxObject EnergyBarMC() { return *cast(GFxObject*)(cast(size_t)&this + 32); }
				GFxObject EnergyTF() { return *cast(GFxObject*)(cast(size_t)&this + 28); }
				GFxObject HealthCritMC() { return *cast(GFxObject*)(cast(size_t)&this + 20); }
				GFxObject HealthNormMC() { return *cast(GFxObject*)(cast(size_t)&this + 16); }
				GFxObject HealthBarMC() { return *cast(GFxObject*)(cast(size_t)&this + 12); }
				GFxObject HealthTF() { return *cast(GFxObject*)(cast(size_t)&this + 8); }
				float LastEnergy() { return *cast(float*)(cast(size_t)&this + 4); }
				float LastHealth() { return *cast(float*)(cast(size_t)&this + 0); }
			}
			bool HealthNormOn() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool HealthNormOn(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 388); }
			float NormalZoomf() { return *cast(float*)(cast(size_t)cast(void*)this + 396); }
			float CurZoomf() { return *cast(float*)(cast(size_t)cast(void*)this + 392); }
			ScriptArray!(GFxMinimapHud.MessageRow) Messages() { return *cast(ScriptArray!(GFxMinimapHud.MessageRow)*)(cast(size_t)cast(void*)this + 484); }
			ScriptArray!(GFxMinimapHud.MessageRow) FreeMessages() { return *cast(ScriptArray!(GFxMinimapHud.MessageRow)*)(cast(size_t)cast(void*)this + 496); }
			UTGameReplicationInfo GRI() { return *cast(UTGameReplicationInfo*)(cast(size_t)cast(void*)this + 628); }
			UTPlayerReplicationInfo LastFlagCarrier() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 620); }
			UTPlayerReplicationInfo LastEnemy() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 616); }
			ubyte LastFlagHome() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 612); }
			int LastScore() { return *cast(int*)(cast(size_t)cast(void*)this + 604); }
			int LastAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 600); }
			UTWeapon LastWeapon() { return *cast(UTWeapon*)(cast(size_t)cast(void*)this + 596); }
			UTVehicle LastVehicle() { return *cast(UTVehicle*)(cast(size_t)cast(void*)this + 592); }
			GFxObject MultiKillMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 588); }
			GFxObject MultiKillMsg_TF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 584); }
			GFxObject MultiKillN_TF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 580); }
			GFxObject HitLocMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 548); }
			GFxObject CreditsAndStreaksMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 544); }
			GFxObject OffhandsAndFlagMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 540); }
			GFxObject EnemyNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 536); }
			GFxObject CenterTextTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 532); }
			GFxObject CenterTextMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 528); }
			GFxObject TimeTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 524); }
			GFxObject TeamStatsMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 520); }
			GFxObject PlayerStatsMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 516); }
			int NumMessages() { return *cast(int*)(cast(size_t)cast(void*)this + 512); }
			float MessageHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			GFxObject LogMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 480); }
			GFxMinimapHud.HeEnDisplay VehicleHE() { return *cast(GFxMinimapHud.HeEnDisplay*)(cast(size_t)cast(void*)this + 444); }
			GFxMinimapHud.HeEnDisplay PlayerHE() { return *cast(GFxMinimapHud.HeEnDisplay*)(cast(size_t)cast(void*)this + 408); }
			float MinZoomf() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
			float MaxZoomf() { return *cast(float*)(cast(size_t)cast(void*)this + 400); }
			GFxMinimap Minimap() { return *cast(GFxMinimap*)(cast(size_t)cast(void*)this + 384); }
			WorldInfo ThisWorld() { return *cast(WorldInfo*)(cast(size_t)cast(void*)this + 380); }
		}
		bool bIsTeamHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 632) & 0x1) != 0; }
		bool bIsTeamHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 632) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 632) &= ~0x1; } return val; }
		bool bDrawWeaponCrosshairs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 632) & 0x2) != 0; }
		bool bDrawWeaponCrosshairs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 632) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 632) &= ~0x2; } return val; }
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
	void Init(LocalPlayer pPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	void LoadHeEn(GFxMinimapHud.HeEnDisplay* pInfo, ScriptString Base)
	{
		ubyte params[48];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = *pInfo;
		*cast(ScriptString*)&params[36] = Base;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadHeEn, params.ptr, cast(void*)0);
		*pInfo = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	void UpdateHealth(GFxMinimapHud.HeEnDisplay* pInfo, float NewHealth, float HealthMax)
	{
		ubyte params[44];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = *pInfo;
		*cast(float*)&params[36] = NewHealth;
		*cast(float*)&params[40] = HealthMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHealth, params.ptr, cast(void*)0);
		*pInfo = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	void UpdateEnergy(GFxMinimapHud.HeEnDisplay* pInfo, float NewEnergy, float EnergyMax)
	{
		ubyte params[44];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = *pInfo;
		*cast(float*)&params[36] = NewEnergy;
		*cast(float*)&params[40] = EnergyMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateEnergy, params.ptr, cast(void*)0);
		*pInfo = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	static ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		StaticClass.ProcessEvent(Functions.FormatTime, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void ClearStats(bool clearScores)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = clearScores;
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
