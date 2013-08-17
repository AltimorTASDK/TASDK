module UnrealScript.TribesGame.TrDeployable_ForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrDeployable;

extern(C++) interface TrDeployable_ForceField : TrDeployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeployable_ForceField")); }
	private static __gshared TrDeployable_ForceField mDefaultProperties;
	@property final static TrDeployable_ForceField DefaultProperties() { mixin(MGDPC("TrDeployable_ForceField", "TrDeployable_ForceField TribesGame.Default__TrDeployable_ForceField")); }
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
			ScriptFunction Touch() { mixin(MGF("mTouch", "Function TribesGame.TrDeployable_ForceField.Touch")); }
			ScriptFunction OnHealthChanged() { mixin(MGF("mOnHealthChanged", "Function TribesGame.TrDeployable_ForceField.OnHealthChanged")); }
			ScriptFunction PlayDamageHealthEffects() { mixin(MGF("mPlayDamageHealthEffects", "Function TribesGame.TrDeployable_ForceField.PlayDamageHealthEffects")); }
			ScriptFunction PlayHitOtherEffects() { mixin(MGF("mPlayHitOtherEffects", "Function TribesGame.TrDeployable_ForceField.PlayHitOtherEffects")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrDeployable_ForceField.Tick")); }
			ScriptFunction GetMarker() { mixin(MGF("mGetMarker", "Function TribesGame.TrDeployable_ForceField.GetMarker")); }
		}
	}
	@property final auto ref
	{
		float m_LightFlashBrightness() { mixin(MGPC("float", 1564)); }
		UObject.Color m_LightFlashColor() { mixin(MGPC("UObject.Color", 1560)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_Light'!
		float m_fOutHitOtherFlashRemainingTime() { mixin(MGPC("float", 1552)); }
		float m_fInHitOtherFlashRemainingTime() { mixin(MGPC("float", 1548)); }
		float m_fOutHitOtherFlashTimeLength() { mixin(MGPC("float", 1544)); }
		float m_fInHitOtherFlashTimeLength() { mixin(MGPC("float", 1540)); }
		float m_fOutTakeHitFlashRemainingTime() { mixin(MGPC("float", 1536)); }
		float m_fInTakeHitFlashRemainingTime() { mixin(MGPC("float", 1532)); }
		float m_fOutTakeHitFlashTimeLength() { mixin(MGPC("float", 1528)); }
		float m_fInTakeHitFlashTimeLength() { mixin(MGPC("float", 1524)); }
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
