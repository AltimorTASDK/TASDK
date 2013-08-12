module UnrealScript.TribesGame.TrPowerGenerator;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrGameObjective;
import UnrealScript.TribesGame.TrTeamBlockerStaticMeshActor;
import UnrealScript.TribesGame.TrHelpTextManager;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.Engine.AnimNodeScalePlayRate;

extern(C++) interface TrPowerGenerator : TrGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPowerGenerator")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsGeneratingPower;
			ScriptFunction mApplyServerSettings;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mShouldShowHelpText;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mTick;
			ScriptFunction mPlayDamageHealthEffects;
			ScriptFunction mDoRepairs;
			ScriptFunction mDamageAllMorphs;
			ScriptFunction mPlayRestoreHealthEffects;
			ScriptFunction mUpdateGeneratorDowntime;
			ScriptFunction mUpdateGeneratorPower;
			ScriptFunction mAutoRestoreHealth;
			ScriptFunction mAddToPoweredObjectives;
			ScriptFunction mTakeDamage;
			ScriptFunction mGetMarker;
			ScriptFunction mGiveDestroyAccolade;
			ScriptFunction mAwardUpgradeAssists;
		}
		public @property static final
		{
			ScriptFunction IsGeneratingPower() { return mIsGeneratingPower ? mIsGeneratingPower : (mIsGeneratingPower = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.IsGeneratingPower")); }
			ScriptFunction ApplyServerSettings() { return mApplyServerSettings ? mApplyServerSettings : (mApplyServerSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.ApplyServerSettings")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.ReplicatedEvent")); }
			ScriptFunction ShouldShowHelpText() { return mShouldShowHelpText ? mShouldShowHelpText : (mShouldShowHelpText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.ShouldShowHelpText")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.PostBeginPlay")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.PostInitAnimTree")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.Tick")); }
			ScriptFunction PlayDamageHealthEffects() { return mPlayDamageHealthEffects ? mPlayDamageHealthEffects : (mPlayDamageHealthEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.PlayDamageHealthEffects")); }
			ScriptFunction DoRepairs() { return mDoRepairs ? mDoRepairs : (mDoRepairs = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.DoRepairs")); }
			ScriptFunction DamageAllMorphs() { return mDamageAllMorphs ? mDamageAllMorphs : (mDamageAllMorphs = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.DamageAllMorphs")); }
			ScriptFunction PlayRestoreHealthEffects() { return mPlayRestoreHealthEffects ? mPlayRestoreHealthEffects : (mPlayRestoreHealthEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.PlayRestoreHealthEffects")); }
			ScriptFunction UpdateGeneratorDowntime() { return mUpdateGeneratorDowntime ? mUpdateGeneratorDowntime : (mUpdateGeneratorDowntime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.UpdateGeneratorDowntime")); }
			ScriptFunction UpdateGeneratorPower() { return mUpdateGeneratorPower ? mUpdateGeneratorPower : (mUpdateGeneratorPower = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.UpdateGeneratorPower")); }
			ScriptFunction AutoRestoreHealth() { return mAutoRestoreHealth ? mAutoRestoreHealth : (mAutoRestoreHealth = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.AutoRestoreHealth")); }
			ScriptFunction AddToPoweredObjectives() { return mAddToPoweredObjectives ? mAddToPoweredObjectives : (mAddToPoweredObjectives = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.AddToPoweredObjectives")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.TakeDamage")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.GetMarker")); }
			ScriptFunction GiveDestroyAccolade() { return mGiveDestroyAccolade ? mGiveDestroyAccolade : (mGiveDestroyAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.GiveDestroyAccolade")); }
			ScriptFunction AwardUpgradeAssists() { return mAwardUpgradeAssists ? mAwardUpgradeAssists : (mAwardUpgradeAssists = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPowerGenerator.AwardUpgradeAssists")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrGameObjective) m_PoweredObjectives() { return *cast(ScriptArray!(TrGameObjective)*)(cast(size_t)cast(void*)this + 1384); }
			ScriptArray!(TrTeamBlockerStaticMeshActor) m_PoweredTeamBlockers() { return *cast(ScriptArray!(TrTeamBlockerStaticMeshActor)*)(cast(size_t)cast(void*)this + 1404); }
			float m_fAnimInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1400); }
			AnimNodeScalePlayRate m_AnimNodeScale() { return *cast(AnimNodeScalePlayRate*)(cast(size_t)cast(void*)this + 1396); }
			float m_fAutoRestoreHealthEffectsInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1380); }
			float m_fAutoRestoreHealthTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1376); }
			int r_nDowntimeRemaining() { return *cast(int*)(cast(size_t)cast(void*)this + 1372); }
			float m_fAutoRestoreHealthTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1364); }
			float m_fMaxMorphDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1360); }
		}
		bool m_bFullyRestoringHealthEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1368) & 0x2) != 0; }
		bool m_bFullyRestoringHealthEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1368) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1368) &= ~0x2; } return val; }
		bool m_bAutoRestoreHealthEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1368) & 0x1) != 0; }
		bool m_bAutoRestoreHealthEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1368) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1368) &= ~0x1; } return val; }
	}
final:
	bool IsGeneratingPower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsGeneratingPower, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyServerSettings, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	bool ShouldShowHelpText(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldShowHelpText, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void PlayDamageHealthEffects(int DamageAmount, int HitBoneIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(int*)&params[4] = HitBoneIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDamageHealthEffects, params.ptr, cast(void*)0);
	}
	void DoRepairs(int HealAmount, Controller EventInstigator, Actor DamageCauser, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[44];
		params[] = 0;
		*cast(int*)params.ptr = HealAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Actor*)&params[8] = DamageCauser;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[16] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoRepairs, params.ptr, cast(void*)0);
	}
	void DamageAllMorphs(float DamageAmount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		(cast(ScriptObject)this).ProcessEvent(Functions.DamageAllMorphs, params.ptr, cast(void*)0);
	}
	void PlayRestoreHealthEffects(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRestoreHealthEffects, params.ptr, cast(void*)0);
	}
	void UpdateGeneratorDowntime()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGeneratorDowntime, cast(void*)0, cast(void*)0);
	}
	void UpdateGeneratorPower(bool bPowered)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPowered;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGeneratorPower, params.ptr, cast(void*)0);
	}
	void AutoRestoreHealth(bool bFullyRestore)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFullyRestore;
		(cast(ScriptObject)this).ProcessEvent(Functions.AutoRestoreHealth, params.ptr, cast(void*)0);
	}
	void AddToPoweredObjectives(TrDeployable dep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDeployable*)params.ptr = dep;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToPoweredObjectives, params.ptr, cast(void*)0);
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	void GiveDestroyAccolade(TrPlayerController TrPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveDestroyAccolade, params.ptr, cast(void*)0);
	}
	void AwardUpgradeAssists()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AwardUpgradeAssists, cast(void*)0, cast(void*)0);
	}
}
