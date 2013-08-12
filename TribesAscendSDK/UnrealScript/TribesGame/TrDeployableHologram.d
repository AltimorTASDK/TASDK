module UnrealScript.TribesGame.TrDeployableHologram;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SkeletalMeshActorSpawnable;

extern(C++) interface TrDeployableHologram : SkeletalMeshActorSpawnable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableHologram")); }
	private static __gshared TrDeployableHologram mDefaultProperties;
	@property final static TrDeployableHologram DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployableHologram)("TrDeployableHologram TribesGame.Default__TrDeployableHologram")); }
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
			ScriptFunction SetValidDeployableLocation() { return mSetValidDeployableLocation ? mSetValidDeployableLocation : (mSetValidDeployableLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployableHologram.SetValidDeployableLocation")); }
			ScriptFunction ClearAllMessages() { return mClearAllMessages ? mClearAllMessages : (mClearAllMessages = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployableHologram.ClearAllMessages")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployableHologram.Destroyed")); }
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployableHologram.PreBeginPlay")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployableHologram.Init")); }
		}
	}
	@property final auto ref
	{
		int m_nOldInvalidDeployReason() { return *cast(int*)(cast(size_t)cast(void*)this + 544); }
		MaterialInstanceConstant m_RuntimeMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 540); }
		MaterialInstanceConstant m_HologramMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 536); }
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
