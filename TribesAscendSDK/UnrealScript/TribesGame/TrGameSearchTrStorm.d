module UnrealScript.TribesGame.TrGameSearchTrStorm;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrStorm : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSearchTrStorm")); }
	private static __gshared TrGameSearchTrStorm mDefaultProperties;
	@property final static TrGameSearchTrStorm DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSearchTrStorm)("TrGameSearchTrStorm TribesGame.Default__TrGameSearchTrStorm")); }
}
