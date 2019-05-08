declare options "[osc:on]";
import("stdfaust.lib");

process= hgroup("", vu, vu2);

// dB meter
vu = _ <: _, (an.amp_follower(0.5) : ba.linear2db : vbargraph("[4]L[unit:dB]",-70,10)) : attach;
vu2 = _ <: _, (an.amp_follower(0.5) : ba.linear2db : vbargraph("[4]R[unit:dB]",-70,10)) : attach;
