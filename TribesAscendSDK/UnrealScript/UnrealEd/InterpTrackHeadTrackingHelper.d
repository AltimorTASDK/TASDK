module UnrealScript.UnrealEd.InterpTrackHeadTrackingHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackHeadTrackingHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.InterpTrackHeadTrackingHelper")()); }
	private static __gshared InterpTrackHeadTrackingHelper mDefaultProperties;
	@property final static InterpTrackHeadTrackingHelper DefaultProperties() { mixin(MGDPC!(InterpTrackHeadTrackingHelper, "InterpTrackHeadTrackingHelper UnrealEd.Default__InterpTrackHeadTrackingHelper")()); }
}
