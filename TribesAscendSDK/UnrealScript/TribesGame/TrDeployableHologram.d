module UnrealScript.TribesGame.TrDeployableHologram;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SkeletalMeshActorSpawnable;

extern(C++) interface TrDeployableHologram : SkeletalMeshActorSpawnable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployableHologram")()); }
	private static __gshared TrDeployableHologram mDefaultProperties;
	@property final static TrDeployableHologram DefaultProperties() { mixin(MGDPC!(TrDeployableHologram, "TrDeployableHologram TribesGame.Default__TrDeployableHologram")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetValidDeployableLocation;
			ScriptFunction mClearAllMessages;
			ScriptFunction mDestroyed;
			ScriptFunction mPreBeginPlay;
			ScriptFunction mInit;
		}
		public @property static final
		{
			ScriptFunction SetValidDeployableLocation() { mixin(MGF!("mSetValidDeployableLocation", "Function TribesGame.TrDeployableHologram.SetValidDeployableLocation")()); }
			ScriptFunction ClearAllMessages() { mixin(MGF!("mClearAllMessages", "Function TribesGame.TrDeployableHologram.ClearAllMessages")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrDeployableHologram.Destroyed")()); }
			ScriptFunction PreBeginPlay() { mixin(MGF!("mPreBeginPlay", "Function TribesGame.TrDeployableHologram.PreBeginPlay")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function TribesGame.TrDeployableHologram.Init")()); }
		}
	}
	@property final auto ref
	{
		int m_nOldInvalidDeployReason() { mixin(MGPC!(int, 544)()); }
		MaterialInstanceConstant m_RuntimeMIC() { mixin(MGPC!(MaterialInstanceConstant, 540)()); }
		MaterialInstanceConstant m_HologramMaterial() { mixin(MGPC!(MaterialInstanceConstant, 536)()); }
	}
final:
	void SetValidDeployableLocation(bool bValidLocation, int InvalidDeployReason)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bValidLocation;
		*cast(int*)&params[4] = InvalidDeployReason;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetValidDeployableLocation, params.ptr, cast(void*)0);
	}
	void ClearAllMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearAllMessages, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Init(ScriptClass DeployableClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeployableClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
}
