module UnrealScript.TribesGame.TrCamera_Neutral;

import ScriptClasses;
import UnrealScript.Engine.CameraActor;

extern(C++) interface TrCamera_Neutral : CameraActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCamera_Neutral")); }
	private static __gshared TrCamera_Neutral mDefaultProperties;
	@property final static TrCamera_Neutral DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCamera_Neutral)("TrCamera_Neutral TribesGame.Default__TrCamera_Neutral")); }
}
