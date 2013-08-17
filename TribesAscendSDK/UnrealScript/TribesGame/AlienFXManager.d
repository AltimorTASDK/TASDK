module UnrealScript.TribesGame.AlienFXManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface AlienFXManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.AlienFXManager")()); }
	private static __gshared AlienFXManager mDefaultProperties;
	@property final static AlienFXManager DefaultProperties() { mixin(MGDPC!(AlienFXManager, "AlienFXManager TribesGame.Default__AlienFXManager")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mClose;
			ScriptFunction mQueued;
			ScriptFunction mObjective;
			ScriptFunction mSwapWeapon;
			ScriptFunction mCheckHealth;
			ScriptFunction mmenu;
			ScriptFunction mDamage;
			ScriptFunction mSetTeam;
			ScriptFunction mSetHealth;
			ScriptFunction mTick;
			ScriptFunction mOverlay;
			ScriptFunction mDamageConvert;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF!("mInit", "Function TribesGame.AlienFXManager.Init")()); }
			ScriptFunction Close() { mixin(MGF!("mClose", "Function TribesGame.AlienFXManager.Close")()); }
			ScriptFunction Queued() { mixin(MGF!("mQueued", "Function TribesGame.AlienFXManager.Queued")()); }
			ScriptFunction Objective() { mixin(MGF!("mObjective", "Function TribesGame.AlienFXManager.Objective")()); }
			ScriptFunction SwapWeapon() { mixin(MGF!("mSwapWeapon", "Function TribesGame.AlienFXManager.SwapWeapon")()); }
			ScriptFunction CheckHealth() { mixin(MGF!("mCheckHealth", "Function TribesGame.AlienFXManager.CheckHealth")()); }
			ScriptFunction menu() { mixin(MGF!("mmenu", "Function TribesGame.AlienFXManager.menu")()); }
			ScriptFunction Damage() { mixin(MGF!("mDamage", "Function TribesGame.AlienFXManager.Damage")()); }
			ScriptFunction SetTeam() { mixin(MGF!("mSetTeam", "Function TribesGame.AlienFXManager.SetTeam")()); }
			ScriptFunction SetHealth() { mixin(MGF!("mSetHealth", "Function TribesGame.AlienFXManager.SetHealth")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.AlienFXManager.Tick")()); }
			ScriptFunction Overlay() { mixin(MGF!("mOverlay", "Function TribesGame.AlienFXManager.Overlay")()); }
			ScriptFunction DamageConvert() { mixin(MGF!("mDamageConvert", "Function TribesGame.AlienFXManager.DamageConvert")()); }
		}
	}
	enum FXOverlay : ubyte
	{
		FXO_NONE = 0,
		FXO_RAGE = 1,
		FXO_REGEN = 2,
		FXO_DYING = 3,
		FXO_INVULN = 4,
		FXO_JAMMER = 5,
		FXO_SHIELD = 6,
		FXO_STEALTH = 7,
		FXO_MAX = 8,
	}
	enum FXArea : ubyte
	{
		FXA_ALL = 0,
		FXA_RIGHT = 1,
		FXA_LEFT = 2,
		FXA_UPPER = 3,
		FXA_LOWER = 4,
		FXA_FRONT = 5,
		FXA_REAR = 6,
		FXA_MAX = 7,
	}
	@property final
	{
		auto ref
		{
			AlienFXManager.FXOverlay eLastOverlay() { mixin(MGPC!("AlienFXManager.FXOverlay", 141)()); }
			AlienFXManager.FXOverlay eCurrOverlay() { mixin(MGPC!("AlienFXManager.FXOverlay", 140)()); }
			float fIntervalCount() { mixin(MGPC!("float", 136)()); }
			float fInterval() { mixin(MGPC!("float", 132)()); }
			float fSpeed() { mixin(MGPC!("float", 128)()); }
			float fBoundsPct() { mixin(MGPC!("float", 124)()); }
			float fHighBounds() { mixin(MGPC!("float", 120)()); }
			float fLowBounds() { mixin(MGPC!("float", 116)()); }
			int nTarget() { mixin(MGPC!("int", 112)()); }
			float fDamages() { mixin(MGPC!("float", 80)()); }
			float fObjectiveTime() { mixin(MGPC!("float", 76)()); }
			float fDamageTime() { mixin(MGPC!("float", 72)()); }
			int nHealth() { mixin(MGPC!("int", 64)()); }
			int nTeam() { mixin(MGPC!("int", 60)()); }
		}
		bool bBrighten() { mixin(MGBPC!(68, 0x8)()); }
		bool bBrighten(bool val) { mixin(MSBPC!(68, 0x8)()); }
		bool bMenuOpen() { mixin(MGBPC!(68, 0x4)()); }
		bool bMenuOpen(bool val) { mixin(MSBPC!(68, 0x4)()); }
		bool bLoaded() { mixin(MGBPC!(68, 0x2)()); }
		bool bLoaded(bool val) { mixin(MSBPC!(68, 0x2)()); }
		bool bShowFX() { mixin(MGBPC!(68, 0x1)()); }
		bool bShowFX(bool val) { mixin(MSBPC!(68, 0x1)()); }
	}
final:
	void Init(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	void Close()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Close, cast(void*)0, cast(void*)0);
	}
	void Queued()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Queued, cast(void*)0, cast(void*)0);
	}
	void Objective()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Objective, cast(void*)0, cast(void*)0);
	}
	void SwapWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SwapWeapon, cast(void*)0, cast(void*)0);
	}
	void CheckHealth()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckHealth, cast(void*)0, cast(void*)0);
	}
	void menu(bool bOpen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bOpen;
		(cast(ScriptObject)this).ProcessEvent(Functions.menu, params.ptr, cast(void*)0);
	}
	void Damage(AlienFXManager.FXArea Area)
	{
		ubyte params[1];
		params[] = 0;
		*cast(AlienFXManager.FXArea*)params.ptr = Area;
		(cast(ScriptObject)this).ProcessEvent(Functions.Damage, params.ptr, cast(void*)0);
	}
	void SetTeam(int TeamNum)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeam, params.ptr, cast(void*)0);
	}
	void SetHealth(int Health)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Health;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHealth, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void Overlay(AlienFXManager.FXOverlay Type)
	{
		ubyte params[1];
		params[] = 0;
		*cast(AlienFXManager.FXOverlay*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.Overlay, params.ptr, cast(void*)0);
	}
	void DamageConvert(ScriptString Area)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Area;
		(cast(ScriptObject)this).ProcessEvent(Functions.DamageConvert, params.ptr, cast(void*)0);
	}
}
