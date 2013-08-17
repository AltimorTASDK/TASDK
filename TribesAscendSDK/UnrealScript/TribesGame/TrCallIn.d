module UnrealScript.TribesGame.TrCallIn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrCallIn : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCallIn")()); }
	private static __gshared TrCallIn mDefaultProperties;
	@property final static TrCallIn DefaultProperties() { mixin(MGDPC!(TrCallIn, "TrCallIn TribesGame.Default__TrCallIn")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mGetCreditCost;
			ScriptFunction mVerifyCredits;
			ScriptFunction mVerifyPower;
			ScriptFunction mFireCompletedCallIn;
			ScriptFunction mTick;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.TrCallIn.Initialize")()); }
			ScriptFunction GetCreditCost() { mixin(MGF!("mGetCreditCost", "Function TribesGame.TrCallIn.GetCreditCost")()); }
			ScriptFunction VerifyCredits() { mixin(MGF!("mVerifyCredits", "Function TribesGame.TrCallIn.VerifyCredits")()); }
			ScriptFunction VerifyPower() { mixin(MGF!("mVerifyPower", "Function TribesGame.TrCallIn.VerifyPower")()); }
			ScriptFunction FireCompletedCallIn() { mixin(MGF!("mFireCompletedCallIn", "Function TribesGame.TrCallIn.FireCompletedCallIn")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrCallIn.Tick")()); }
		}
	}
	@property final
	{
		auto ref
		{
			TrPlayerController OwningController() { mixin(MGPC!("TrPlayerController", 540)()); }
			ScriptClass ExtentTemplateClass() { mixin(MGPC!("ScriptClass", 536)()); }
			float VehicleDist() { mixin(MGPC!("float", 528)()); }
			float GameObjectiveDist() { mixin(MGPC!("float", 524)()); }
			float FlagStationDist() { mixin(MGPC!("float", 520)()); }
			ScriptString DisplayName() { mixin(MGPC!("ScriptString", 508)()); }
			MaterialInstanceConstant MICDisplay() { mixin(MGPC!("MaterialInstanceConstant", 504)()); }
			int CreditCost() { mixin(MGPC!("int", 500)()); }
			float DegreeOfMovement() { mixin(MGPC!("float", 496)()); }
			float CooldownTime() { mixin(MGPC!("float", 492)()); }
			float CallTime() { mixin(MGPC!("float", 488)()); }
			float BuildupTime() { mixin(MGPC!("float", 484)()); }
			int DatabaseId() { mixin(MGPC!("int", 480)()); }
			TrObject.ETrPlayerCallIns CallInId() { mixin(MGPC!("TrObject.ETrPlayerCallIns", 476)()); }
		}
		bool IsInProgress() { mixin(MGBPC!(532, 0x4)()); }
		bool IsInProgress(bool val) { mixin(MSBPC!(532, 0x4)()); }
		bool PendingDelete() { mixin(MGBPC!(532, 0x2)()); }
		bool PendingDelete(bool val) { mixin(MSBPC!(532, 0x2)()); }
		bool CheckExtentsOnSpawn() { mixin(MGBPC!(532, 0x1)()); }
		bool CheckExtentsOnSpawn(bool val) { mixin(MSBPC!(532, 0x1)()); }
	}
final:
	void Initialize(int NewPrice, int NewBuildup, int NewCooldown)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = NewPrice;
		*cast(int*)&params[4] = NewBuildup;
		*cast(int*)&params[8] = NewCooldown;
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, params.ptr, cast(void*)0);
	}
	int GetCreditCost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCreditCost, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool VerifyCredits()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.VerifyCredits, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool VerifyPower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.VerifyPower, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool FireCompletedCallIn(int CallInOffs, Vector TargetLocation, Vector TargetNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = CallInOffs;
		*cast(Vector*)&params[4] = TargetLocation;
		*cast(Vector*)&params[16] = TargetNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.FireCompletedCallIn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
