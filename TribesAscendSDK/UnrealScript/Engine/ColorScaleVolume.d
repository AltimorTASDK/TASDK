module UnrealScript.Engine.ColorScaleVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Volume;

extern(C++) interface ColorScaleVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ColorScaleVolume")()); }
	private static __gshared ColorScaleVolume mDefaultProperties;
	@property final static ColorScaleVolume DefaultProperties() { mixin(MGDPC!(ColorScaleVolume, "ColorScaleVolume Engine.Default__ColorScaleVolume")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTouch;
			ScriptFunction mUnTouch;
		}
		public @property static final
		{
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function Engine.ColorScaleVolume.Touch")()); }
			ScriptFunction UnTouch() { mixin(MGF!("mUnTouch", "Function Engine.ColorScaleVolume.UnTouch")()); }
		}
	}
	@property final auto ref
	{
		float InterpTime() { mixin(MGPC!("float", 532)()); }
		Vector ColorScale() { mixin(MGPC!("Vector", 520)()); }
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
