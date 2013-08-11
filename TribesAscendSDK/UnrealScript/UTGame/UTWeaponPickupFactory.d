module UnrealScript.UTGame.UTWeaponPickupFactory;

import ScriptClasses;
import UnrealScript.UTGame.UTWeaponLocker;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTPickupFactory;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTWeaponPickupFactory : UTPickupFactory
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(UTWeaponLocker.PawnToucher) Customers() { return *cast(ScriptArray!(UTWeaponLocker.PawnToucher)*)(cast(size_t)cast(void*)this + 960); }
			float WeaponPickupScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 956); }
			ScriptClass WeaponPickupClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 944); }
		}
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 948) & 0x2) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 948) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 948) &= ~0x2; } return val; }
		bool bWeaponStay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 948) & 0x1) != 0; }
		bool bWeaponStay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 948) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 948) &= ~0x1; } return val; }
	}
final:
	bool AllowPickup(UTBot Bot)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = Bot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40958], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void InitializePickup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50329], cast(void*)0, cast(void*)0);
	}
	void SetPickupVisible()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50331], cast(void*)0, cast(void*)0);
	}
	void SetPickupHidden()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50332], cast(void*)0, cast(void*)0);
	}
	void SetPickupMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50333], cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50334], params.ptr, cast(void*)0);
	}
	bool CheckForErrors()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50336], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetWeaponStay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50338], cast(void*)0, cast(void*)0);
	}
	void StartSleeping()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50339], cast(void*)0, cast(void*)0);
	}
	bool AddCustomer(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50340], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HasCustomer(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50345], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PickedUpBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50351], params.ptr, cast(void*)0);
	}
	void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50353], params.ptr, cast(void*)0);
	}
	void ShowActive()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50356], cast(void*)0, cast(void*)0);
	}
	void ShowHidden()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50357], cast(void*)0, cast(void*)0);
	}
	void NotifyLocalPlayerDead(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50358], params.ptr, cast(void*)0);
	}
}
