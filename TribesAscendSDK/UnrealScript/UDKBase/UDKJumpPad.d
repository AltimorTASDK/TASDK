module UnrealScript.UDKBase.UDKJumpPad;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PathNode;

extern(C++) interface UDKJumpPad : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKJumpPad")()); }
	private static __gshared UDKJumpPad mDefaultProperties;
	@property final static UDKJumpPad DefaultProperties() { mixin(MGDPC!(UDKJumpPad, "UDKJumpPad UDKBase.Default__UDKJumpPad")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTouch;
			ScriptFunction mPostTouch;
			ScriptFunction mSuggestMovePreparation;
		}
		public @property static final
		{
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function UDKBase.UDKJumpPad.Touch")()); }
			ScriptFunction PostTouch() { mixin(MGF!("mPostTouch", "Function UDKBase.UDKJumpPad.PostTouch")()); }
			ScriptFunction SuggestMovePreparation() { mixin(MGF!("mSuggestMovePreparation", "Function UDKBase.UDKJumpPad.SuggestMovePreparation")()); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'JumpAmbientSound'!
		float JumpAirControl() { mixin(MGPC!(float, 716)()); }
		float JumpTime() { mixin(MGPC!(float, 712)()); }
		SoundCue JumpSound() { mixin(MGPC!(SoundCue, 708)()); }
		PathNode JumpTarget() { mixin(MGPC!(PathNode, 704)()); }
		Vector JumpVelocity() { mixin(MGPC!(Vector, 692)()); }
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
	void PostTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostTouch, params.ptr, cast(void*)0);
	}
	bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestMovePreparation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
