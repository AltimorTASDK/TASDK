module UnrealScript.UTGame.UTWeaponLocker;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTPickupFactory;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTWeaponLocker : UTPickupFactory
{
	struct WeaponEntry
	{
		public @property final auto ref ScriptClass WeaponClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		private ubyte __WeaponClass[4];
	}
	struct PawnToucher
	{
		public @property final auto ref float NextTouchTime() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __NextTouchTime[4];
		public @property final auto ref Pawn P() { return *cast(Pawn*)(cast(size_t)&this + 0); }
		private ubyte __P[4];
	}
	struct ReplacementWeaponEntry
	{
		public @property final auto ref ScriptClass WeaponClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
		private ubyte __WeaponClass[4];
		public @property final bool bReplaced() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bReplaced(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bReplaced[4];
	}
	public @property final auto ref ScriptArray!(UTWeaponLocker.WeaponEntry) Weapons() { return *cast(ScriptArray!(UTWeaponLocker.WeaponEntry)*)(cast(size_t)cast(void*)this + 944); }
	public @property final auto ref ScriptArray!(Vector) LockerPositions() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1004); }
	public @property final auto ref ScriptArray!(UTWeaponLocker.PawnToucher) Customers() { return *cast(ScriptArray!(UTWeaponLocker.PawnToucher)*)(cast(size_t)cast(void*)this + 1028); }
	public @property final auto ref float NextProximityCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1076); }
	public @property final auto ref float ScaleRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1072); }
	public @property final auto ref ParticleSystem WeaponSpawnEffectTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1068); }
	public @property final auto ref ParticleSystem ActiveEffectTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1064); }
	public @property final auto ref ParticleSystem InactiveEffectTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1060); }
	public @property final auto ref float ProximityDistanceSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
	public @property final auto ref float CurrentWeaponScaleX() { return *cast(float*)(cast(size_t)cast(void*)this + 1044); }
	public @property final bool bScalingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1040) & 0x4) != 0; }
	public @property final bool bScalingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1040) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1040) &= ~0x4; } return val; }
	public @property final bool bPlayerNearby() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1040) & 0x2) != 0; }
	public @property final bool bPlayerNearby(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1040) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1040) &= ~0x2; } return val; }
	public @property final bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1040) & 0x1) != 0; }
	public @property final bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1040) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1040) &= ~0x1; } return val; }
	public @property final auto ref ScriptString LockerString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1016); }
	public @property final auto ref UTWeaponLocker.ReplacementWeaponEntry ReplacementWeapons() { return *cast(UTWeaponLocker.ReplacementWeaponEntry*)(cast(size_t)cast(void*)this + 956); }
	final float BotDesireability(Pawn Bot, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Bot;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40956], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50230], cast(void*)0, cast(void*)0);
	}
	final bool ShouldCamp(UTBot B, float MaxWait)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(float*)&params[4] = MaxWait;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50231], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool AddCustomer(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50235], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool HasCustomer(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50240], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50244], cast(void*)0, cast(void*)0);
	}
	final void InitializeWeapons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50245], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50247], params.ptr, cast(void*)0);
	}
	final void ReplaceWeapon(int Index, ScriptClass NewWeaponClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptClass*)&params[4] = NewWeaponClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50250], params.ptr, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50253], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50254], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50261], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final void InitializePickup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50268], cast(void*)0, cast(void*)0);
	}
	final void ShowActive()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50269], cast(void*)0, cast(void*)0);
	}
	final void NotifyLocalPlayerDead(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50270], params.ptr, cast(void*)0);
	}
	final void SetPlayerNearby(PlayerController PC, bool bNewPlayerNearby, bool bPlayEffects)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bNewPlayerNearby;
		*cast(bool*)&params[8] = bPlayEffects;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50272], params.ptr, cast(void*)0);
	}
	final void DestroyWeapons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50280], cast(void*)0, cast(void*)0);
	}
	final void ShowHidden()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50282], cast(void*)0, cast(void*)0);
	}
}
