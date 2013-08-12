module UnrealScript.TribesGame.TrGameSearchTrCTF;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrCTF : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSearchTrCTF")); }
	private static __gshared TrGameSearchTrCTF mDefaultProperties;
	@property final static TrGameSearchTrCTF DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSearchTrCTF)("TrGameSearchTrCTF TribesGame.Default__TrGameSearchTrCTF")); }
}
