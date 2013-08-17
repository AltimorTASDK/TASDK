module UnrealScript.TribesGame.TrStormCarrierShield;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DynamicSMActor;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrStormCore;

extern(C++) interface TrStormCarrierShield : DynamicSMActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrStormCarrierShield")()); }
	private static __gshared TrStormCarrierShield mDefaultProperties;
	@property final static TrStormCarrierShield DefaultProperties() { mixin(MGDPC!(TrStormCarrierShield, "TrStormCarrierShield TribesGame.Default__TrStormCarrierShield")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnShieldsDestroyed;
			ScriptFunction mTouch;
		}
		public @property static final
		{
			ScriptFunction OnShieldsDestroyed() { mixin(MGF!("mOnShieldsDestroyed", "Function TribesGame.TrStormCarrierShield.OnShieldsDestroyed")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function TribesGame.TrStormCarrierShield.Touch")()); }
		}
	}
	@property final
	{
		@property final auto ref TrStormCore m_AssociatedCarrierCore() { mixin(MGPC!("TrStormCore", 536)()); }
		bool m_bAreShieldsUp() { mixin(MGBPC!(532, 0x1)()); }
		bool m_bAreShieldsUp(bool val) { mixin(MSBPC!(532, 0x1)()); }
	}
final:
	void OnShieldsDestroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnShieldsDestroyed, cast(void*)0, cast(void*)0);
	}
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
}
