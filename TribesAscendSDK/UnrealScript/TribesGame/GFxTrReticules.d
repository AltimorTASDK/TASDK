module UnrealScript.TribesGame.GFxTrReticules;

import ScriptClasses;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.Pawn;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.TribesGame.GfxTrHud;

extern(C++) interface GFxTrReticules : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrReticules")); }
	private static __gshared GFxTrReticules mDefaultProperties;
	@property final static GFxTrReticules DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrReticules)("GFxTrReticules TribesGame.Default__GFxTrReticules")); }
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
			ScriptFunction CallShowReticule() { return mCallShowReticule ? mCallShowReticule : (mCallShowReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.CallShowReticule")); }
			ScriptFunction CallSetReticuleColor() { return mCallSetReticuleColor ? mCallSetReticuleColor : (mCallSetReticuleColor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.CallSetReticuleColor")); }
			ScriptFunction ASC_SetCustomReticule() { return mASC_SetCustomReticule ? mASC_SetCustomReticule : (mASC_SetCustomReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.ASC_SetCustomReticule")); }
			ScriptFunction CallSetReticuleDepth() { return mCallSetReticuleDepth ? mCallSetReticuleDepth : (mCallSetReticuleDepth = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.CallSetReticuleDepth")); }
			ScriptFunction ChangeReticule() { return mChangeReticule ? mChangeReticule : (mChangeReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.ChangeReticule")); }
			ScriptFunction SetCustomReticule() { return mSetCustomReticule ? mSetCustomReticule : (mSetCustomReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.SetCustomReticule")); }
			ScriptFunction GetCurrentReticuleIndex() { return mGetCurrentReticuleIndex ? mGetCurrentReticuleIndex : (mGetCurrentReticuleIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.GetCurrentReticuleIndex")); }
			ScriptFunction CallSetAccuracy() { return mCallSetAccuracy ? mCallSetAccuracy : (mCallSetAccuracy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.CallSetAccuracy")); }
			ScriptFunction CallShowHit() { return mCallShowHit ? mCallShowHit : (mCallShowHit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.CallShowHit")); }
			ScriptFunction DisableVehicleAmmoClip() { return mDisableVehicleAmmoClip ? mDisableVehicleAmmoClip : (mDisableVehicleAmmoClip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.DisableVehicleAmmoClip")); }
			ScriptFunction EnableVehicleAmmoClip() { return mEnableVehicleAmmoClip ? mEnableVehicleAmmoClip : (mEnableVehicleAmmoClip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.EnableVehicleAmmoClip")); }
			ScriptFunction SetVehicleAmmoClip() { return mSetVehicleAmmoClip ? mSetVehicleAmmoClip : (mSetVehicleAmmoClip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.SetVehicleAmmoClip")); }
			ScriptFunction SetPowerupPercentage() { return mSetPowerupPercentage ? mSetPowerupPercentage : (mSetPowerupPercentage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.SetPowerupPercentage")); }
			ScriptFunction SetLaserPowerupPercentage() { return mSetLaserPowerupPercentage ? mSetLaserPowerupPercentage : (mSetLaserPowerupPercentage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.SetLaserPowerupPercentage")); }
			ScriptFunction SetVehiclePowerupPercentage() { return mSetVehiclePowerupPercentage ? mSetVehiclePowerupPercentage : (mSetVehiclePowerupPercentage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.SetVehiclePowerupPercentage")); }
			ScriptFunction SetGenericPowerupPercentage() { return mSetGenericPowerupPercentage ? mSetGenericPowerupPercentage : (mSetGenericPowerupPercentage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.SetGenericPowerupPercentage")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.Init")); }
			ScriptFunction SetReticuleVisible() { return mSetReticuleVisible ? mSetReticuleVisible : (mSetReticuleVisible = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.SetReticuleVisible")); }
			ScriptFunction UpdateReticule() { return mUpdateReticule ? mUpdateReticule : (mUpdateReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrReticules.UpdateReticule")); }
		}
	}
	@property final
	{
		auto ref
		{
			int m_nCurrentReticuleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
			float LastReticuleDepth() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float LastHitEnemyTime() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			float LastAccuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
			int LastCrossMode() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
			Weapon LastWeapon() { return *cast(Weapon*)(cast(size_t)cast(void*)this + 136); }
			GFxObject ActiveReticule() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 132); }
			GFxObject ReticulesMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 128); }
			WorldInfo ThisWorld() { return *cast(WorldInfo*)(cast(size_t)cast(void*)this + 124); }
			// WARNING: Property 'HUD' has the same name as a defined type!
		}
		bool m_bVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x1) != 0; }
		bool m_bVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x1; } return val; }
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
