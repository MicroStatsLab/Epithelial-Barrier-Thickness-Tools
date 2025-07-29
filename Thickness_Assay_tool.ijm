// Variable declarations
var width;
var height;
var bw_threshold = 12; //black white threshold
var show;
var colour_way;
function thicknessToolOptions()
{
    set_show = newArray("No", "Yes"); //show options
    set_colour = newArray("Both", "Colours", "Total" );
    Dialog.create("Total Thickness Shading Options");
    Dialog.addNumber("Shaded Threshold Value", bw_threshold);
    Dialog.addChoice("Show split channels?", set_show);
    Dialog.addChoice("Analysis Option", set_colour); // What  you want to find
    Dialog.show();

    bw_threshold = Dialog.getNumber();
    show = Dialog.getChoice();
    colour_way = Dialog.getChoice();
    width = getWidth;
    height = getHeight;
}

//------------------------------------------------------------------------------
// Macro - Finds both colour and total area
//------------------------------------------------------------------------------
macro "Thickness Tool - N66C000C111D11D12D13D14D15D16D17D21D22D23D24D25D26D27D31D32D33D34D35D36D41D42D43D44D45D46D51D52D53D54D55D56D61D62D63D64D65D66D71D72D73D74D75D76D81D82D83D84D85D86D87D91D92D93D94Da1Da2Da3Db1Db2Dc1Dc2Dd1Dd2De1De2C222D18Db3C222D77C222D37D95Da4C222Dc3C222D67C222D47D6cC333Dc8C333D6bC333D57Dc9C333D28DbbC333D7cC333DcbC333D4bDcaDd3C333D5bC333D19D7bD7dC333D6dD8cC333D7eD96C333C444D4cD5cD88Db4De3C444DbaC444DccC444D6eD8dC444D3dC444D3cDa5DabC444D4dD8bD9cDbcC444D5dD8eC444D4eC444DacDc7DdcC444D3eDd7C444DdbC444C555D5eDedC555D78D9bDddC555D38C555DeeC555D9eDe6DecC555D2eD3bD9dDcdDd8C555De7C555DdeC555DbdC555DadDaeDd9C555DdaDebC555Db9C555DbeDceC555D5aD97C555De8C555C666De9DeaC666D2dDb8C666Dc4C666D4aC666Dd6C666D68C666D48C666C777D2cD6aC777D1aC777D98C777D58DaaC777D29C777C888D1eC888Da6C888Dd4C888Db5C888D3aC888D7aDb7Dc6C888D2bC888D00D01D02D03D04D05D06D07D08D09D10D20D30D40D50D60D70D80D90Da0Db0Dc0Dd0De0C999D8aD9aDe5C999D0aC999D1bC999D89C999De4C999D59C999Dd5C999CaaaD99Da7CaaaD49CaaaD1dCaaaD39CaaaD69D79CaaaD1cD2aDa9Db6CaaaD0bDc5CaaaDa8CaaaCbbbD0cCbbbCcccD0dCcccD0eCcccBf0C000C111D01D02D11D12D21D22D31D32D41D42D51D52D53D61D62D63D71D72D73D74D81D82D83D84D85D86D91D92D93D94D95D96Da1Da2Da3Da4Da5Da6Da7C222D64D75C222D43C222D97C222DacC333D6aC333D54DadC333D33C333D76Da8C333D59D7aD8bC333D65C333D9cC333D87C333D7bC333D23DaeC333D16C333D37C444D7cC444D49D5aD8cD9bC444D7dD9dC444D03D06D13D7eC444D48D6bC444D26D27D38D39C444D8dC444D2eD3aD4aD5bC444D3bD3cD6eD9eC444D6cC555D2dD3dD4bD8eC555D1eD6dC555D0eD2cD3eD4cD5cC555D28C555D17D4dD5dD5eC555D0dD1dD44C555D07D4eD69C555D0cD1cD29D2bC555D2aC555D58C555D98C555D0bC555D18D1aD1bC555D08D19D47C666D09D0aC666D8aC666D36C666D77DabC666C777D55D66C777D34C777Da9C777C888D79C888D15C888D05C888D9aC888D88C888D25C888D00D10D20D30D40D50D60D70D80D90C999D24C999D57D68C999D46C999Da0C999D35D89C999CaaaD45D56D67D78D99DaaCaaaD14CaaaD04CaaaCbbbCcccB0fC000C111D09D0aD19D1aD29D2aD39D3aD49D4aD59D5aD69D6aD79D7aD88D89D8aD97D98D99D9aDa6Da7Da8Da9DaaC222D08C222D78D87C222D96C222C333D18C333D13C333D45C333D14C333D12D24D35C333D23D34C333D33C333D68C333D22C444D32C444Da5C444D11C444D54C444D03C444D21D44C444D31C444D20D92C444D10D77C444D28D86C444D02D07D30D70C444D55D80C555D25C555D60D90D91C555D01D04C555D62D71D72D81D82C555D00D43D61D63C555D42D58Da0C555D40C555D50D53C555D41C555D38D48D51D52C555Da2C555Da1C555D64C666D73C666D83C666D95Da3C666C777D17D46C777D93C777Da4C777D15C777D36C777C888D76C888D67C888D65C888D56C888D74D85C888D05C888C999D26C999D06C999D84C999D27C999CaaaD75CaaaD94CaaaD16CaaaD66CaaaD57CaaaD37D47CaaaCbbbCcccNf0C000C111D1aD2aD3aD4aD5aD6aD79D7aD89D8aD98D99D9aDa8Da9DaaDb8Db9DbaDc8Dc9DcaDd8Dd9DdaDe8De9DeaC222D84C222D69D88C222C333D26D36C333D74C333D83D93C333D35C333D65Dd7C333De7C333D45C333D94C333D55C333D15Dc7C444D25C444D92C444D46D59Db7C444Da3Dd3C444D16D64C444D19C444D78De3C444Da7C444D40C444Da4C444D73Da2Dc3C444D29D49D70D82C444C555D14D34D60D75Db3C555D39C555D24D91De2C555D11D20D30D44Dd2C555D13D54D97Da1C555D50D63D80Db4Dc4C555D12D33D41D72D90Dd4De0De1C555D42D43Da0C555D23D53D71D81Db0Dd0Dd1C555D22D32Db2C555D21D31D52D62Dc2De4C555Db1C555D51D61Dc0C555D56C555Dc1C666D10C666D68D87C666C777D85C777D66C777D27C777D37D95Dd6De6C777C888Da5C888Dc6C888D47C888D17C888D58C888Db5Db6C888Dc5C888D0aC999D18Dd5C999D76C999D77De5C999Da6C999D05C999D57C999D48C999D28C999D04D09C999CaaaD38CaaaD01D03CaaaD02CaaaD96CaaaD67D86CaaaD06CaaaCbbbD00CbbbCcccD08CcccD07"
{
    name = getTitle();

    thicknessToolOptions();
    colours = newArray(" (red)", " (green)"," (blue)");
    roiManager("reset");
    roiManager("Associate", "true");

    run("Duplicate...", "duplicate"); // Change the duplicate not the original
    new_name = getTitle();

    if (isOpen("ROI Manager")) //close ROI if open
   {
      selectWindow("ROI Manager");
      run("Select None");
      run("Close");
   }

    run("Set Scale...", "distance=0 known=0 pixel=1 unit=pixel");

    run("Split Channels"); //split channels for colour analysis
    newImage("Overlay", "8-bit black", width, height, 1);
    for (i = 0; i < 3; i++){ //create mask and analysis each colour
        selectWindow(new_name + colours[i]);
        run("Divide...", "value=3"); //closest to value that accurately represents as possible.
        run("Duplicate...", "duplicate");
        setThreshold(bw_threshold, 255); //make threshold the minimum. Get anything from that to white.
        run("Convert to Mask");
        run("Create Selection");
        roiManager("Add"); 
        run("Analyze Particles...", 
              "size="+"-Infinity circularity=0.00-1.00 show=Nothing add stack");

        getStatistics(area, mean, min, max, std, histogram);
        pixCount = histogram[255]; //get count of anything you have made white
        area_percentage = pixCount / (height * width) * 100;

        n=getValue("results.count");
        setResult("Label", n, name + colours[i]);
        setResult("Area^2", n, pixCount);
        setResult("Area %", n, area_percentage);

            dupname = getTitle(); // close extra tabs
        close(dupname);
        
        roiManager("Select", roiManager("count") - 1); // Select the last-added ROI to overlay
        wait(150); //pause for imageJ to catch up (MANDATORY)

    // can be moved below if you add a for loop.
    selectWindow("Overlay");
    roiManager("Select", i);
    run("Fill"); // Merging all of the overlays into one image.

    if (show == "No") close(new_name + colours[i]);
    }


    setThreshold(bw_threshold, 255); //make threshold the minimum. Get anything from that to white.
        run("Convert to Mask");
        run("Create Selection");
        roiManager("Add"); 
        run("Analyze Particles...", 
              "size="+"-Infinity circularity=0.00-1.00 show=Nothing add stack");

        getStatistics(area, mean, min, max, std, histogram);
        pixCount = histogram[255]; //get count of anything you have made white


        area_percentage = pixCount / (height * width) * 100;

        n=getValue("results.count");
        setResult("Label", n, name);
        setResult("Area^2", n, pixCount);
        setResult("Area %", n, area_percentage);
    selectWindow(name);
    roiManager("Select", 3);  
close("Overlay");
}

