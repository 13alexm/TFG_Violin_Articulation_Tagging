import pretty_midi

stac = pretty_midi.PrettyMIDI("stac.midi")
rest = pretty_midi.PrettyMIDI("rest.midi")

stac_program = pretty_midi.instrument_name_to_program("Acoustic Grand Piano")
regular_program = pretty_midi.instrument_name_to_program("Violin")

stac_instrument = pretty_midi.Instrument(program=stac_program)
regular_instrument = pretty_midi.Instrument(program=regular_program)

merged_midi = pretty_midi.PrettyMIDI()

for instrument in stac.instruments:
    for note in instrument.notes:
        stac_instrument.notes.append(note)
for instrument in rest.instruments:
    for note in instrument.notes:
        regular_instrument.notes.append(note)

merged_midi.instruments.append(stac_instrument)
merged_midi.instruments.append(regular_instrument)
merged_midi.write("merged.midi")

