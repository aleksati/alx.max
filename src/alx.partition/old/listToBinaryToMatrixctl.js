// Takes a list of number (up to 15) and outputs their binary representation in a format that fills
// a MaxMSP matrixctl object, like a sequencer.

autowatch = 1;
inlets = 1;
outlets = 2;


function list() {
    const partition = arrayfromargs(arguments)

    // transform integers into binary numbers with length = 4
    const partitionBinaries = [];
    for (let i=0; i<partition.length; i++) {
        let binary = ((partition[i] & 0xff) >>> 0).toString(2); 
        while (binary.length < 4) {
            binary =  "0" + binary;
        }  
        partitionBinaries.push(binary);
    }

    // convert binaries into the maxtrixCtl format
    const binariesAsMatrixCrlCoords = [];
    const rows = 4;
    const columns = 16;

    for (let y=0; y<columns; y++) {
        for (let x=0; x<rows; x++) {
            let value = partitionBinaries[y]
            let cell = [y, x, Number(value[x])]
            binariesAsMatrixCrlCoords.push(...cell)
        }
    }

    outlet(0, binariesAsMatrixCrlCoords)
    outlet(1, partitionBinaries)
}