module UnrealScript.TribesGame.AlienFXManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface AlienFXManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.AlienFXManager")); }
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
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.Init")); }
			ScriptFunction Close() { return mClose ? mClose : (mClose = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.Close")); }
			ScriptFunction Queued() { return mQueued ? mQueued : (mQueued = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.Queued")); }
			ScriptFunction Objective() { return mObjective ? mObjective : (mObjective = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.Objective")); }
			ScriptFunction SwapWeapon() { return mSwapWeapon ? mSwapWeapon : (mSwapWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.SwapWeapon")); }
			ScriptFunction CheckHealth() { return mCheckHealth ? mCheckHealth : (mCheckHealth = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.CheckHealth")); }
			ScriptFunction menu() { return mmenu ? mmenu : (mmenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.menu")); }
			ScriptFunction Damage() { return mDamage ? mDamage : (mDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.Damage")); }
			ScriptFunction SetTeam() { return mSetTeam ? mSetTeam : (mSetTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.SetTeam")); }
			ScriptFunction SetHealth() { return mSetHealth ? mSetHealth : (mSetHealth = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.SetHealth")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.Tick")); }
			ScriptFunction Overlay() { return mOverlay ? mOverlay : (mOverlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.Overlay")); }
			ScriptFunction DamageConvert() { return mDamageConvert ? mDamageConvert : (mDamageConvert = ScriptObject.Find!(ScriptFunction)("Function TribesGame.AlienFXManager.DamageConvert")); }
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
			AlienFXManager.FXOverlay eLastOverlay() { return *cast(AlienFXManager.FXOverlay*)(cast(size_t)cast(void*)this + 141); }
			AlienFXManager.FXOverlay eCurrOverlay() { return *cast(AlienFXManager.FXOverlay*)(cast(size_t)cast(void*)this + 140); }
			float fIntervalCount() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			float fInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			float fSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float fBoundsPct() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float fHighBounds() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float fLowBounds() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			int nTarget() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
			float fDamages() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float fObjectiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			float fDamageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			int nHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int nTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bBrighten() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x8) != 0; }
		bool bBrighten(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x8; } return val; }
		bool bMenuOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x4) != 0; }
		bool bMenuOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x4; } return val; }
		bool bLoaded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
		bool bLoaded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
		bool bShowFX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bShowFX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
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
