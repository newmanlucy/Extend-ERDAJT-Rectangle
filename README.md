# Extend ERDAJT Rectangle

This program extends the rectangle (channels 27.7 through 29.12) to the rest of the show. Chases, dimming, etc. on the top white stripe is spread to other white elements. The red stripe is spread to red elements, the green stripe to green elements, and the blue to blue. The bottom white stripe is spread to mixed-color elements.

There is an option to spread to RGB lights as well. In this case, the red, green, and blue stripes in the rectangle are mapped to the red, green, and blue channel in each RGB node.

## Installation and requirements

Uses Python 3. I have 3.9.7, though I doubt it's super picky.

I haven't tested this in other environments, but I don't think you should need to install requirements. Please let me know if that's not the case.

## Usage
Move your input file to `inputSequences`, then run the command below from the root directory of this repository. It may be helpful to add a symbolic link from the LOR rectangle file to the input sequences so that you can run this script multiple times after editing the rectangle, without re-copying.

```
python3 extend.py [optional args] MySequence.lms
```

The output should appear in `outputSequences`. You will need to fix chaces on the 15- and 16-channel trees, and to add strobes and halogens if you haven't already. You may also want to adjust the RGB.

### Arguments

* `lms_file_name`: The name of your input file which you moved to `inputSequences`
* `--no-RGB`: Specifies that you don't want to spread the sequence to RGB lights. RGB spreading is done by default.
* `--no-trees`: Specifies that you don't want to spread the sequence to 15- and 16-channel trees.
* `--override`: Indicates that you would like to remove any effects in channels to which you are now spreading. False by default. Also, the original file is not overwritten.
