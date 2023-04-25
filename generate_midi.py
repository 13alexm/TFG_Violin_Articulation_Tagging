import pretty_midi


def merge3midi(midi1, midi2, midi3, outf, ins1='Harpsichord', ins2='String Ensemble 1', ins3='Violin'):
    """
    :param midi1: midi input path 1, the staccato notes
    :param midi2: midi input path 2, the legato notes
    :param midi3: midi input path 3, the rest of the notes
    :param ins1: string name of the instrument for input 1
    :param ins2: string name of the instrument for input 2
    :param ins3: string name of the instrument for input 3
    :param outf: name for the output file
    :return: merged midi object
    """
    chan1 = pretty_midi.PrettyMIDI(midi1)
    chan2 = pretty_midi.PrettyMIDI(midi2)
    chan3 = pretty_midi.PrettyMIDI(midi3)

    chan1_ins = pretty_midi.Instrument(program=pretty_midi.instrument_name_to_program(ins1))
    chan2_ins = pretty_midi.Instrument(program=pretty_midi.instrument_name_to_program(ins2))
    chan3_ins = pretty_midi.Instrument(program=pretty_midi.instrument_name_to_program(ins3))

    merged = pretty_midi.PrettyMIDI()

    for instrument in chan1.instruments:
        for note in instrument.notes:
            chan1_ins.notes.append(note)
    for instrument in chan2.instruments:
        for note in instrument.notes:
            chan2_ins.notes.append(note)
    for instrument in chan3.instruments:
        for note in instrument.notes:
            chan3_ins.notes.append(note)

    merged.instruments.append(chan1_ins)
    merged.instruments.append(chan2_ins)
    merged.instruments.append(chan3_ins)
    merged.write(outf + '.midi')

    return merged


def merge2midi(midi1, midi2, outf, ins1='Harpsichord', ins2='String Ensemble 1'):
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
    merged.write(outf + '.midi')

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
