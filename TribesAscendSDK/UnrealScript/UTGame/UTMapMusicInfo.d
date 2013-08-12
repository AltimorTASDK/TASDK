module UnrealScript.UTGame.UTMapMusicInfo;

import ScriptClasses;
import UnrealScript.UDKBase.UDKMapMusicInfo;

extern(C++) interface UTMapMusicInfo : UDKMapMusicInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTMapMusicInfo")); }
}
