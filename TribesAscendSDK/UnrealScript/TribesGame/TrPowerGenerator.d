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
	public @property final auto ref ScriptArray!(TrGameObjective) m_PoweredObjectives() { return *cast(ScriptArray!(TrGameObjective)*)(cast(size_t)cast(void*)this + 1384); }
	public @property final auto ref ScriptArray!(TrTeamBlockerStaticMeshActor) m_PoweredTeamBlockers() { return *cast(ScriptArray!(TrTeamBlockerStaticMeshActor)*)(cast(size_t)cast(void*)this + 1404); }
	public @property final auto ref float m_fAnimInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1400); }
	public @property final auto ref AnimNodeScalePlayRate m_AnimNodeScale() { return *cast(AnimNodeScalePlayRate*)(cast(size_t)cast(void*)this + 1396); }
	public @property final auto ref float m_fAutoRestoreHealthEffectsInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1380); }
	public @property final auto ref float m_fAutoRestoreHealthTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1376); }
	public @property final auto ref int r_nDowntimeRemaining() { return *cast(int*)(cast(size_t)cast(void*)this + 1372); }
	public @property final bool m_bFullyRestoringHealthEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1368) & 0x2) != 0; }
	public @property final bool m_bFullyRestoringHealthEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1368) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1368) &= ~0x2; } return val; }
	public @property final bool m_bAutoRestoreHealthEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1368) & 0x1) != 0; }
	public @property final bool m_bAutoRestoreHealthEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1368) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1368) &= ~0x1; } return val; }
	public @property final auto ref float m_fAutoRestoreHealthTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1364); }
	public @property final auto ref float m_fMaxMorphDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1360); }
	final bool IsGeneratingPower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79907], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107459], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107463], params.ptr, cast(void*)0);
	}
	final bool ShouldShowHelpText(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107465], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107468], cast(void*)0, cast(void*)0);
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107470], params.ptr, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107472], params.ptr, cast(void*)0);
	}
	final void PlayDamageHealthEffects(int DamageAmount, int HitBoneIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(int*)&params[4] = HitBoneIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107474], params.ptr, cast(void*)0);
	}
	final void DoRepairs(int HealAmount, Controller EventInstigator, Actor DamageCauser, ScriptClass DamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[44];
		params[] = 0;
		*cast(int*)params.ptr = HealAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Actor*)&params[8] = DamageCauser;
		*cast(ScriptClass*)&params[12] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[16] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107481], params.ptr, cast(void*)0);
	}
	final void DamageAllMorphs(float DamageAmount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107487], params.ptr, cast(void*)0);
	}
	final void PlayRestoreHealthEffects(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107493], params.ptr, cast(void*)0);
	}
	final void UpdateGeneratorDowntime()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107500], cast(void*)0, cast(void*)0);
	}
	final void UpdateGeneratorPower(bool bPowered)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPowered;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107502], params.ptr, cast(void*)0);
	}
	final void AutoRestoreHealth(bool bFullyRestore)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFullyRestore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107508], params.ptr, cast(void*)0);
	}
	final void AddToPoweredObjectives(TrDeployable dep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDeployable*)params.ptr = dep;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107528], params.ptr, cast(void*)0);
	}
	final void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107530], params.ptr, cast(void*)0);
	}
	final Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107542], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	final void GiveDestroyAccolade(TrPlayerController TrPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107544], params.ptr, cast(void*)0);
	}
	final void AwardUpgradeAssists()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107546], cast(void*)0, cast(void*)0);
	}
}
