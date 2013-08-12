module UnrealScript.TribesGame.TrDeployable_ForceField;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrDeployable;

extern(C++) interface TrDeployable_ForceField : TrDeployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_ForceField")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTouch;
			ScriptFunction mOnHealthChanged;
			ScriptFunction mPlayDamageHealthEffects;
			ScriptFunction mPlayHitOtherEffects;
			ScriptFunction mTick;
			ScriptFunction mGetMarker;
		}
		public @property static final
		{
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_ForceField.Touch")); }
			ScriptFunction OnHealthChanged() { return mOnHealthChanged ? mOnHealthChanged : (mOnHealthChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_ForceField.OnHealthChanged")); }
			ScriptFunction PlayDamageHealthEffects() { return mPlayDamageHealthEffects ? mPlayDamageHealthEffects : (mPlayDamageHealthEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_ForceField.PlayDamageHealthEffects")); }
			ScriptFunction PlayHitOtherEffects() { return mPlayHitOtherEffects ? mPlayHitOtherEffects : (mPlayHitOtherEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_ForceField.PlayHitOtherEffects")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_ForceField.Tick")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_ForceField.GetMarker")); }
		}
	}
	@property final auto ref
	{
		float m_LightFlashBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 1564); }
		UObject.Color m_LightFlashColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1560); }
		float m_fOutHitOtherFlashRemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1552); }
		float m_fInHitOtherFlashRemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1548); }
		float m_fOutHitOtherFlashTimeLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1544); }
		float m_fInHitOtherFlashTimeLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
		float m_fOutTakeHitFlashRemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1536); }
		float m_fInTakeHitFlashRemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1532); }
		float m_fOutTakeHitFlashTimeLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1528); }
		float m_fInTakeHitFlashTimeLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1524); }
	}
final:
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
	void OnHealthChanged(bool wasDamage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = wasDamage;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnHealthChanged, params.ptr, cast(void*)0);
	}
	void PlayDamageHealthEffects(int DamageAmount, int HitBoneIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(int*)&params[4] = HitBoneIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDamageHealthEffects, params.ptr, cast(void*)0);
	}
	void PlayHitOtherEffects(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayHitOtherEffects, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
