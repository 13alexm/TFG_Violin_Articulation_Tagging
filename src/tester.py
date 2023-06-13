import os
import timestamp as ts


def change_name(n):
    parts = n.split("_")
    idx = parts[-1]
    nn = parts[0]
    print(nn + '_' + idx)
    return nn + '_' + idx


def middle(n):
    parts = n.split("_")
    print(n)
    nn = parts[2]
    return nn


def rename(n, ren):
    parts = n.split("_")
    parts[2] = ren
    return "_".join(parts)


# os.makedirs('Alignments/Staccato/Timestamps', exist_ok=True)
# for filename in os.listdir("Alignments/Staccato"):
#     if os.path.isfile(os.path.join("Alignments/Staccato", filename)):
#         fullpath = os.path.join("Alignments/Staccato", filename)
#         name = os.path.splitext(filename)[0]
#
#         ts.write_time_stamps(fullpath, 'Alignments/Staccato/Timestamps/' + change_name(name).lower())

# os.makedirs('Alignments/Legato/Timestamps', exist_ok=True)
# for filename in os.listdir("Alignments/Legato"):
#     if os.path.isfile(os.path.join("Alignments/Legato", filename)):
#         fullpath = os.path.join("Alignments/Legato", filename)
#         name = os.path.splitext(filename)[0]
#
#         ts.write_time_stamps(fullpath, 'Alignments/Legato/Timestamps/' + change_name(name).lower())

for filename in os.listdir("Data_Segments"):
    name = os.path.splitext(filename)[0]
    if middle(name) == 40:
        try:
            os.remove(filename)
        except:
            print("Error")
    if middle(name) == "6":
        try:
            os.rename(os.path.join("Data_Segments", filename), rename(os.path.join("Data_Segments", filename), "Staccato"))
        except:
            print("Cannot perform operation for", filename)

    # if middle(name) == "6":
    #     try:
    #         os.rename(filename, rename(filename, "Staccato"))
    #     except:
    #         print("Cannot perform operation for", filename)
