module UnrealScript.TribesGame.GFxTrReticules;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.Pawn;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.TribesGame.GfxTrHud;

extern(C++) interface GFxTrReticules : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrReticules")()); }
	private static __gshared GFxTrReticules mDefaultProperties;
	@property final static GFxTrReticules DefaultProperties() { mixin(MGDPC!(GFxTrReticules, "GFxTrReticules TribesGame.Default__GFxTrReticules")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCallShowReticule;
			ScriptFunction mCallSetReticuleColor;
			ScriptFunction mASC_SetCustomReticule;
			ScriptFunction mCallSetReticuleDepth;
			ScriptFunction mChangeReticule;
			ScriptFunction mSetCustomReticule;
			ScriptFunction mGetCurrentReticuleIndex;
			ScriptFunction mCallSetAccuracy;
			ScriptFunction mCallShowHit;
			ScriptFunction mDisableVehicleAmmoClip;
			ScriptFunction mEnableVehicleAmmoClip;
			ScriptFunction mSetVehicleAmmoClip;
			ScriptFunction mSetPowerupPercentage;
			ScriptFunction mSetLaserPowerupPercentage;
			ScriptFunction mSetVehiclePowerupPercentage;
			ScriptFunction mSetGenericPowerupPercentage;
			ScriptFunction mInit;
			ScriptFunction mSetReticuleVisible;
			ScriptFunction mUpdateReticule;
		}
		public @property static final
		{
			ScriptFunction CallShowReticule() { mixin(MGF!("mCallShowReticule", "Function TribesGame.GFxTrReticules.CallShowReticule")()); }
			ScriptFunction CallSetReticuleColor() { mixin(MGF!("mCallSetReticuleColor", "Function TribesGame.GFxTrReticules.CallSetReticuleColor")()); }
			ScriptFunction ASC_SetCustomReticule() { mixin(MGF!("mASC_SetCustomReticule", "Function TribesGame.GFxTrReticules.ASC_SetCustomReticule")()); }
			ScriptFunction CallSetReticuleDepth() { mixin(MGF!("mCallSetReticuleDepth", "Function TribesGame.GFxTrReticules.CallSetReticuleDepth")()); }
			ScriptFunction ChangeReticule() { mixin(MGF!("mChangeReticule", "Function TribesGame.GFxTrReticules.ChangeReticule")()); }
			ScriptFunction SetCustomReticule() { mixin(MGF!("mSetCustomReticule", "Function TribesGame.GFxTrReticules.SetCustomReticule")()); }
			ScriptFunction GetCurrentReticuleIndex() { mixin(MGF!("mGetCurrentReticuleIndex", "Function TribesGame.GFxTrReticules.GetCurrentReticuleIndex")()); }
			ScriptFunction CallSetAccuracy() { mixin(MGF!("mCallSetAccuracy", "Function TribesGame.GFxTrReticules.CallSetAccuracy")()); }
			ScriptFunction CallShowHit() { mixin(MGF!("mCallShowHit", "Function TribesGame.GFxTrReticules.CallShowHit")()); }
			ScriptFunction DisableVehicleAmmoClip() { mixin(MGF!("mDisableVehicleAmmoClip", "Function TribesGame.GFxTrReticules.DisableVehicleAmmoClip")()); }
			ScriptFunction EnableVehicleAmmoClip() { mixin(MGF!("mEnableVehicleAmmoClip", "Function TribesGame.GFxTrReticules.EnableVehicleAmmoClip")()); }
			ScriptFunction SetVehicleAmmoClip() { mixin(MGF!("mSetVehicleAmmoClip", "Function TribesGame.GFxTrReticules.SetVehicleAmmoClip")()); }
			ScriptFunction SetPowerupPercentage() { mixin(MGF!("mSetPowerupPercentage", "Function TribesGame.GFxTrReticules.SetPowerupPercentage")()); }
			ScriptFunction SetLaserPowerupPercentage() { mixin(MGF!("mSetLaserPowerupPercentage", "Function TribesGame.GFxTrReticules.SetLaserPowerupPercentage")()); }
			ScriptFunction SetVehiclePowerupPercentage() { mixin(MGF!("mSetVehiclePowerupPercentage", "Function TribesGame.GFxTrReticules.SetVehiclePowerupPercentage")()); }
			ScriptFunction SetGenericPowerupPercentage() { mixin(MGF!("mSetGenericPowerupPercentage", "Function TribesGame.GFxTrReticules.SetGenericPowerupPercentage")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function TribesGame.GFxTrReticules.Init")()); }
			ScriptFunction SetReticuleVisible() { mixin(MGF!("mSetReticuleVisible", "Function TribesGame.GFxTrReticules.SetReticuleVisible")()); }
			ScriptFunction UpdateReticule() { mixin(MGF!("mUpdateReticule", "Function TribesGame.GFxTrReticules.UpdateReticule")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int m_nCurrentReticuleIndex() { mixin(MGPC!(int, 160)()); }
			float LastReticuleDepth() { mixin(MGPC!(float, 152)()); }
			float LastHitEnemyTime() { mixin(MGPC!(float, 148)()); }
			float LastAccuracy() { mixin(MGPC!(float, 144)()); }
			int LastCrossMode() { mixin(MGPC!(int, 140)()); }
			Weapon LastWeapon() { mixin(MGPC!(Weapon, 136)()); }
			GFxObject ActiveReticule() { mixin(MGPC!(GFxObject, 132)()); }
			GFxObject ReticulesMC() { mixin(MGPC!(GFxObject, 128)()); }
			WorldInfo ThisWorld() { mixin(MGPC!(WorldInfo, 124)()); }
			// WARNING: Property 'HUD' has the same name as a defined type!
		}
		bool m_bVisible() { mixin(MGBPC!(156, 0x1)()); }
		bool m_bVisible(bool val) { mixin(MSBPC!(156, 0x1)()); }
	}
final:
	void CallShowReticule(int nIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.CallShowReticule, params.ptr, cast(void*)0);
	}
	void CallSetReticuleColor(int nType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nType;
		(cast(ScriptObject)this).ProcessEvent(Functions.CallSetReticuleColor, params.ptr, cast(void*)0);
	}
	void ASC_SetCustomReticule(GFxObject Data)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASC_SetCustomReticule, params.ptr, cast(void*)0);
	}
	void CallSetReticuleDepth(float fDepth)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fDepth;
		(cast(ScriptObject)this).ProcessEvent(Functions.CallSetReticuleDepth, params.ptr, cast(void*)0);
	}
	void ChangeReticule(int nIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeReticule, params.ptr, cast(void*)0);
	}
	bool SetCustomReticule()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCustomReticule, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetCurrentReticuleIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentReticuleIndex, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void CallSetAccuracy(int nAccuracy)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nAccuracy;
		(cast(ScriptObject)this).ProcessEvent(Functions.CallSetAccuracy, params.ptr, cast(void*)0);
	}
	void CallShowHit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CallShowHit, cast(void*)0, cast(void*)0);
	}
	void DisableVehicleAmmoClip()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableVehicleAmmoClip, cast(void*)0, cast(void*)0);
	}
	void EnableVehicleAmmoClip()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableVehicleAmmoClip, cast(void*)0, cast(void*)0);
	}
	void SetVehicleAmmoClip(ScriptString AmmoCount)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = AmmoCount;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVehicleAmmoClip, params.ptr, cast(void*)0);
	}
	void SetPowerupPercentage(int pPercentage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = pPercentage;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPowerupPercentage, params.ptr, cast(void*)0);
	}
	void SetLaserPowerupPercentage(int pPercentage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = pPercentage;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLaserPowerupPercentage, params.ptr, cast(void*)0);
	}
	void SetVehiclePowerupPercentage(int pPercentage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = pPercentage;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVehiclePowerupPercentage, params.ptr, cast(void*)0);
	}
	void SetGenericPowerupPercentage(int pPercentage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = pPercentage;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGenericPowerupPercentage, params.ptr, cast(void*)0);
	}
	void Init(GfxTrHud H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GfxTrHud*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	void SetReticuleVisible(bool bNewVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetReticuleVisible, params.ptr, cast(void*)0);
	}
	void UpdateReticule(Pawn pPawn, bool bForceUpdate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = pPawn;
		*cast(bool*)&params[4] = bForceUpdate;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateReticule, params.ptr, cast(void*)0);
	}
}
