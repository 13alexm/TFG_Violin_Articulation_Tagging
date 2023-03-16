import pretty_midi


def merge2midi(midi1, midi2, ins1, ins2, outf):
    """

    :param midi1: midi input path 1
    :param midi2: midi input path 2
    :param ins1: string name of the instrument for input 1
    :param ins2: string name of the instrument for input 2
    :param outf: name for the output file
    :return: merged midi object
    """
    chan1 = pretty_midi.PrettyMIDI(midi1)
    chan2 = pretty_midi.PrettyMIDI(midi2)

    chan1_ins = pretty_midi.Instrument(program=pretty_midi.instrument_name_to_program(ins1))
    chan2_ins = pretty_midi.Instrument(program=pretty_midi.instrument_name_to_program(ins2))

    merged = pretty_midi.PrettyMIDI()

    for instrument in chan1.instruments:
        for note in instrument.notes:
            chan1_ins.notes.append(note)
    for instrument in chan2.instruments:
        for note in instrument.notes:
            chan2_ins.notes.append(note)

    merged.instruments.append(chan1_ins)
    merged.instruments.append(chan2_ins)
    merged.write(outf+'.midi')

    return merged


# stac = pretty_midi.PrettyMIDI("stac.midi")
# rest = pretty_midi.PrettyMIDI("rest.midi")
#
# stac_program = pretty_midi.instrument_name_to_program("Acoustic Grand Piano")
# regular_program = pretty_midi.instrument_name_to_program("Violin")
#
# stac_instrument = pretty_midi.Instrument(program=stac_program)
# regular_instrument = pretty_midi.Instrument(program=regular_program)
#
# merged_midi = pretty_midi.PrettyMIDI()
#
# for instrument in stac.instruments:
#     for note in instrument.notes:
#         stac_instrument.notes.append(note)
# for instrument in rest.instruments:
#     for note in instrument.notes:
#         regular_instrument.notes.append(note)
#
# merged_midi.instruments.append(stac_instrument)
# merged_midi.instruments.append(regular_instrument)
# merged_midi.write("merged.midi")
