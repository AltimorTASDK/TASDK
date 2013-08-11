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
	struct MessageRow
	{
		public @property final auto ref int Y() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __Y[4];
		public @property final auto ref float StartFadeTime() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __StartFadeTime[4];
		public @property final auto ref GFxObject TF() { return *cast(GFxObject*)(cast(size_t)&this + 4); }
		private ubyte __TF[4];
		public @property final auto ref GFxObject MC() { return *cast(GFxObject*)(cast(size_t)&this + 0); }
		private ubyte __MC[4];
	}
	struct HeEnDisplay
	{
		public @property final auto ref GFxObject EnergyBarMC() { return *cast(GFxObject*)(cast(size_t)&this + 32); }
		private ubyte __EnergyBarMC[4];
		public @property final auto ref GFxObject EnergyTF() { return *cast(GFxObject*)(cast(size_t)&this + 28); }
		private ubyte __EnergyTF[4];
		public @property final bool HealthNormOn() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool HealthNormOn(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __HealthNormOn[4];
		public @property final auto ref GFxObject HealthCritMC() { return *cast(GFxObject*)(cast(size_t)&this + 20); }
		private ubyte __HealthCritMC[4];
		public @property final auto ref GFxObject HealthNormMC() { return *cast(GFxObject*)(cast(size_t)&this + 16); }
		private ubyte __HealthNormMC[4];
		public @property final auto ref GFxObject HealthBarMC() { return *cast(GFxObject*)(cast(size_t)&this + 12); }
		private ubyte __HealthBarMC[4];
		public @property final auto ref GFxObject HealthTF() { return *cast(GFxObject*)(cast(size_t)&this + 8); }
		private ubyte __HealthTF[4];
		public @property final auto ref float LastEnergy() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __LastEnergy[4];
		public @property final auto ref float LastHealth() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __LastHealth[4];
	}
	public @property final bool bIsTeamHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 632) & 0x1) != 0; }
	public @property final bool bIsTeamHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 632) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 632) &= ~0x1; } return val; }
	public @property final auto ref float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref float NormalZoomf() { return *cast(float*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref float CurZoomf() { return *cast(float*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref ScriptArray!(GFxMinimapHud.MessageRow) Messages() { return *cast(ScriptArray!(GFxMinimapHud.MessageRow)*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref ScriptArray!(GFxMinimapHud.MessageRow) FreeMessages() { return *cast(ScriptArray!(GFxMinimapHud.MessageRow)*)(cast(size_t)cast(void*)this + 496); }
	public @property final bool bDrawWeaponCrosshairs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 632) & 0x2) != 0; }
	public @property final bool bDrawWeaponCrosshairs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 632) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 632) &= ~0x2; } return val; }
	public @property final auto ref UTGameReplicationInfo GRI() { return *cast(UTGameReplicationInfo*)(cast(size_t)cast(void*)this + 628); }
	public @property final auto ref UTPlayerReplicationInfo LastFlagCarrier() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref UTPlayerReplicationInfo LastEnemy() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref ubyte LastFlagHome() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref int LastScore() { return *cast(int*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref int LastAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref UTWeapon LastWeapon() { return *cast(UTWeapon*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref UTVehicle LastVehicle() { return *cast(UTVehicle*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref GFxObject MultiKillMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref GFxObject MultiKillMsg_TF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref GFxObject MultiKillN_TF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref GFxObject HitLocMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref GFxObject CreditsAndStreaksMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref GFxObject OffhandsAndFlagMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref GFxObject EnemyNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref GFxObject CenterTextTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref GFxObject CenterTextMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref GFxObject TimeTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref GFxObject TeamStatsMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref GFxObject PlayerStatsMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref int NumMessages() { return *cast(int*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float MessageHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref GFxObject LogMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref GFxMinimapHud.HeEnDisplay VehicleHE() { return *cast(GFxMinimapHud.HeEnDisplay*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref GFxMinimapHud.HeEnDisplay PlayerHE() { return *cast(GFxMinimapHud.HeEnDisplay*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref float MinZoomf() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref float MaxZoomf() { return *cast(float*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref GFxMinimap Minimap() { return *cast(GFxMinimap*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref WorldInfo ThisWorld() { return *cast(WorldInfo*)(cast(size_t)cast(void*)this + 380); }
	final void registerMiniMapView(GFxMinimap MC, float R)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxMinimap*)params.ptr = MC;
		*cast(float*)&params[4] = R;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37442], params.ptr, cast(void*)0);
	}
	final void SetAmmoCountTF(Weapon Wep, ScriptString Ammo)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = Wep;
		*cast(ScriptString*)&params[4] = Ammo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37445], params.ptr, cast(void*)0);
	}
	final GFxObject CreateMessageRow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37448], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	final GFxObject InitMessageRow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37450], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	final void Init(LocalPlayer Player)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = Player;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37453], params.ptr, cast(void*)0);
	}
	final void LoadHeEn(GFxMinimapHud.HeEnDisplay* Info, ScriptString Base)
	{
		ubyte params[48];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = *Info;
		*cast(ScriptString*)&params[36] = Base;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37457], params.ptr, cast(void*)0);
		*Info = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	final void UpdateHealth(GFxMinimapHud.HeEnDisplay* Info, float NewHealth, float HealthMax)
	{
		ubyte params[44];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = *Info;
		*cast(float*)&params[36] = NewHealth;
		*cast(float*)&params[40] = HealthMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37460], params.ptr, cast(void*)0);
		*Info = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	final void UpdateEnergy(GFxMinimapHud.HeEnDisplay* Info, float NewEnergy, float EnergyMax)
	{
		ubyte params[44];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = *Info;
		*cast(float*)&params[36] = NewEnergy;
		*cast(float*)&params[40] = EnergyMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37465], params.ptr, cast(void*)0);
		*Info = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	final ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37470], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void ClearStats(bool clearScores)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = clearScores;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37476], params.ptr, cast(void*)0);
	}
	final void RemoveMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37479], cast(void*)0, cast(void*)0);
	}
	final void AddMessage(ScriptString Type, ScriptString msg)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Type;
		*cast(ScriptString*)&params[12] = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37480], params.ptr, cast(void*)0);
	}
	final void UpdateGameHUD(UTPlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37486], params.ptr, cast(void*)0);
	}
	final void TickHud(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37491], params.ptr, cast(void*)0);
	}
	final void ToggleCrosshair(bool bToggle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bToggle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37503], params.ptr, cast(void*)0);
	}
	final void MinimapZoomOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37507], cast(void*)0, cast(void*)0);
	}
	final void MinimapZoomIn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37508], cast(void*)0, cast(void*)0);
	}
	final void DisplayHit(Vector HitDir, int Damage, ScriptClass DamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitDir;
		*cast(int*)&params[12] = Damage;
		*cast(ScriptClass*)&params[16] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37509], params.ptr, cast(void*)0);
	}
	final void ShowMultiKill(int N, ScriptString msg)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = N;
		*cast(ScriptString*)&params[4] = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37523], params.ptr, cast(void*)0);
	}
	final void SetCenterText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37526], params.ptr, cast(void*)0);
	}
	final ScriptString GetRank(PlayerReplicationInfo PRI)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37528], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void AddDeathMessage(PlayerReplicationInfo Killer, PlayerReplicationInfo Killed, ScriptClass Dmg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Killer;
		*cast(PlayerReplicationInfo*)&params[4] = Killed;
		*cast(ScriptClass*)&params[8] = Dmg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37533], params.ptr, cast(void*)0);
	}
}
