module UnrealScript.TribesGame.TrDeployable_BackupGenerator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrDeployable_BackupGenerator : TrDeployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployable_BackupGenerator")()); }
	private static __gshared TrDeployable_BackupGenerator mDefaultProperties;
	@property final static TrDeployable_BackupGenerator DefaultProperties() { mixin(MGDPC!(TrDeployable_BackupGenerator, "TrDeployable_BackupGenerator TribesGame.Default__TrDeployable_BackupGenerator")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDeployComplete;
			ScriptFunction mMainGeneratorIsOnline;
			ScriptFunction mPowerNearestFriend;
			ScriptFunction mReleasePoweredFriend;
			ScriptFunction mPulseBackupGenerators;
			ScriptFunction mAsynchPowerCheck;
			ScriptFunction mDoPowerCheck;
			ScriptFunction mOnPowerStatusChanged;
			ScriptFunction mDoPowerUpdate;
			ScriptFunction mDestroyed;
			ScriptFunction mPostBeginPlay;
		}
		public @property static final
		{
			ScriptFunction DeployComplete() { mixin(MGF!("mDeployComplete", "Function TribesGame.TrDeployable_BackupGenerator.DeployComplete")()); }
			ScriptFunction MainGeneratorIsOnline() { mixin(MGF!("mMainGeneratorIsOnline", "Function TribesGame.TrDeployable_BackupGenerator.MainGeneratorIsOnline")()); }
			ScriptFunction PowerNearestFriend() { mixin(MGF!("mPowerNearestFriend", "Function TribesGame.TrDeployable_BackupGenerator.PowerNearestFriend")()); }
			ScriptFunction ReleasePoweredFriend() { mixin(MGF!("mReleasePoweredFriend", "Function TribesGame.TrDeployable_BackupGenerator.ReleasePoweredFriend")()); }
			ScriptFunction PulseBackupGenerators() { mixin(MGF!("mPulseBackupGenerators", "Function TribesGame.TrDeployable_BackupGenerator.PulseBackupGenerators")()); }
			ScriptFunction AsynchPowerCheck() { mixin(MGF!("mAsynchPowerCheck", "Function TribesGame.TrDeployable_BackupGenerator.AsynchPowerCheck")()); }
			ScriptFunction DoPowerCheck() { mixin(MGF!("mDoPowerCheck", "Function TribesGame.TrDeployable_BackupGenerator.DoPowerCheck")()); }
			ScriptFunction OnPowerStatusChanged() { mixin(MGF!("mOnPowerStatusChanged", "Function TribesGame.TrDeployable_BackupGenerator.OnPowerStatusChanged")()); }
			ScriptFunction DoPowerUpdate() { mixin(MGF!("mDoPowerUpdate", "Function TribesGame.TrDeployable_BackupGenerator.DoPowerUpdate")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrDeployable_BackupGenerator.Destroyed")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrDeployable_BackupGenerator.PostBeginPlay")()); }
		}
	}
	@property final auto ref TrGameObjective m_PoweredFriend() { mixin(MGPC!(TrGameObjective, 1524)()); }
final:
	void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DeployComplete, cast(void*)0, cast(void*)0);
	}
	bool MainGeneratorIsOnline()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MainGeneratorIsOnline, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PowerNearestFriend()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PowerNearestFriend, cast(void*)0, cast(void*)0);
	}
	void ReleasePoweredFriend()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReleasePoweredFriend, cast(void*)0, cast(void*)0);
	}
	void PulseBackupGenerators()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PulseBackupGenerators, cast(void*)0, cast(void*)0);
	}
	void AsynchPowerCheck()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AsynchPowerCheck, cast(void*)0, cast(void*)0);
	}
	void DoPowerCheck()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoPowerCheck, cast(void*)0, cast(void*)0);
	}
	void OnPowerStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPowerStatusChanged, cast(void*)0, cast(void*)0);
	}
	void DoPowerUpdate(TrDeployable dep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDeployable*)params.ptr = dep;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoPowerUpdate, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
