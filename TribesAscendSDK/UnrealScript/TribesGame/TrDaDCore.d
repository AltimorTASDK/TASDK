module UnrealScript.TribesGame.TrDaDCore;

import ScriptClasses;
import UnrealScript.TribesGame.TrDaDCapacitor;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrGameObjective;
import UnrealScript.TribesGame.TrDaDShell;
import UnrealScript.TribesGame.TrDaDCoreShield;

extern(C++) interface TrDaDCore : TrGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDaDCore")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSpawnShield;
			ScriptFunction mOnCapacitorBlownUp;
			ScriptFunction mOnCapacitorRestored;
			ScriptFunction mTakeDamage;
			ScriptFunction mOnCoreDestroyed;
			ScriptFunction mPostRenderFor;
			ScriptFunction mGetCeilPctScore;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCore.PostBeginPlay")); }
			ScriptFunction SpawnShield() { return mSpawnShield ? mSpawnShield : (mSpawnShield = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCore.SpawnShield")); }
			ScriptFunction OnCapacitorBlownUp() { return mOnCapacitorBlownUp ? mOnCapacitorBlownUp : (mOnCapacitorBlownUp = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCore.OnCapacitorBlownUp")); }
			ScriptFunction OnCapacitorRestored() { return mOnCapacitorRestored ? mOnCapacitorRestored : (mOnCapacitorRestored = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCore.OnCapacitorRestored")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCore.TakeDamage")); }
			ScriptFunction OnCoreDestroyed() { return mOnCoreDestroyed ? mOnCoreDestroyed : (mOnCoreDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCore.OnCoreDestroyed")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCore.PostRenderFor")); }
			ScriptFunction GetCeilPctScore() { return mGetCeilPctScore ? mGetCeilPctScore : (mGetCeilPctScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCore.GetCeilPctScore")); }
		}
	}
	@property final auto ref
	{
		TrDaDShell m_Shell() { return *cast(TrDaDShell*)(cast(size_t)cast(void*)this + 1392); }
		TrDaDCoreShield m_Shields() { return *cast(TrDaDCoreShield*)(cast(size_t)cast(void*)this + 1380); }
		TrDaDCapacitor m_Capacitors() { return *cast(TrDaDCapacitor*)(cast(size_t)cast(void*)this + 1368); }
		float m_fShieldBarPlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 1364); }
		MaterialInstanceConstant m_ShieldBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1360); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SpawnShield(int ShieldIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ShieldIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnShield, params.ptr, cast(void*)0);
	}
	void OnCapacitorBlownUp(int CapacitorIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = CapacitorIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCapacitorBlownUp, params.ptr, cast(void*)0);
	}
	void OnCapacitorRestored(int CapacitorIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = CapacitorIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCapacitorRestored, params.ptr, cast(void*)0);
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
	void OnCoreDestroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCoreDestroyed, cast(void*)0, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
	int GetCeilPctScore()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCeilPctScore, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
