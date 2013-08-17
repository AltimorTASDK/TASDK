module UnrealScript.TribesGame.TrWeatherVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.Emitter;

extern(C++) interface TrWeatherVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrWeatherVolume")()); }
	private static __gshared TrWeatherVolume mDefaultProperties;
	@property final static TrWeatherVolume DefaultProperties() { mixin(MGDPC!(TrWeatherVolume, "TrWeatherVolume TribesGame.Default__TrWeatherVolume")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTouch;
			ScriptFunction mUnTouch;
		}
		public @property static final
		{
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function TribesGame.TrWeatherVolume.Touch")()); }
			ScriptFunction UnTouch() { mixin(MGF!("mUnTouch", "Function TribesGame.TrWeatherVolume.UnTouch")()); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(Emitter) m_WeatherEmitters() { mixin(MGPC!("ScriptArray!(Emitter)", 520)()); }
		bool m_DeactivatePawnCentricWeatherOnEnter() { mixin(MGBPC!(532, 0x1)()); }
		bool m_DeactivatePawnCentricWeatherOnEnter(bool val) { mixin(MSBPC!(532, 0x1)()); }
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
	void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnTouch, params.ptr, cast(void*)0);
	}
}
