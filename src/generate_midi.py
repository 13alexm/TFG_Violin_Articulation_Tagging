import pretty_midi
import os
from music21 import *
from staccato import get_staccato
from legato import get_legato
from detache import get_detache


def remove_long_notes(midi_file):
    midi = pretty_midi.PrettyMIDI(midi_file)
    for midi_instrument in midi.instruments:
        for midi_note in midi_instrument.notes:
            if midi_note.end - midi_note.start > 1.5:
                midi_instrument.notes.remove(midi_note)
    midi.write(midi_file)


def get_midi_with_articulations(xml_path):
    xml = converter.parse(xml_path)
    name = os.path.splitext(os.path.basename(xml_path))[0]
    multi = "Multichannel_MIDI"
    single = "SingleChannel_MIDI"
    os.makedirs(multi, exist_ok=True)
    os.makedirs(single, exist_ok=True)
    print("Getting the articulations of: ", name)
    stac_path = os.path.join(single, name + '_staccato')
    leg_path = os.path.join(single, name + '_legato')
    det_path = os.path.join(single, name + '_detache')

    get_staccato(xml, stac_path)
    get_legato(xml, leg_path)
    get_detache(xml, det_path)

    final_name = os.path.join(multi, name + '_multi')
    merge4midi(stac_path + '.midi', leg_path + '.midi', det_path + '.midi', stac_path + '_full.midi', final_name)


def merge4midi(midi1, midi2, midi3, midi4, outf, ins1='Harpsichord', ins2='String Ensemble 1', ins3='Clarinet',
               ins4='Violin'):
    """
    :param ins4:
    :param midi4:
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
    chan4 = pretty_midi.PrettyMIDI(midi4)

    chan1_ins = pretty_midi.Instrument(program=pretty_midi.instrument_name_to_program(ins1))
    chan2_ins = pretty_midi.Instrument(program=pretty_midi.instrument_name_to_program(ins2))
    chan3_ins = pretty_midi.Instrument(program=pretty_midi.instrument_name_to_program(ins3))
    chan4_ins = pretty_midi.Instrument(program=pretty_midi.instrument_name_to_program(ins4))

    merged = pretty_midi.PrettyMIDI()
    merged.time_signature_changes.append(chan1.time_signature_changes[0])
    # Initializing the midi object with the time signature of the first input
    for instrument in chan1.instruments:
        for note in instrument.notes:
            chan1_ins.notes.append(note)
    for instrument in chan2.instruments:
        for note in instrument.notes:
            chan2_ins.notes.append(note)
    for instrument in chan3.instruments:
        for note in instrument.notes:
            chan3_ins.notes.append(note)
    for instrument in chan4.instruments:
        for note in instrument.notes:
            chan4_ins.notes.append(note)

    merged.instruments.append(chan1_ins)
    merged.instruments.append(chan2_ins)
    merged.instruments.append(chan3_ins)
    merged.instruments.append(chan4_ins)
    merged.write(outf + '.midi')
    remove_long_notes(outf + '.midi')
    return merged


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
    merged.time_signature_changes.append(chan1.time_signature_changes[0])
    # Initializing the midi object with the time signature of the first input
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
    merged.time_signature_changes.append(chan1.time_signature_changes[0])
    # Initializing the midi object with the time signature of the first input
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
