module UnrealScript.TribesGame.TrGameSearchTrTDM;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrTDM : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSearchTrTDM")); }
}
