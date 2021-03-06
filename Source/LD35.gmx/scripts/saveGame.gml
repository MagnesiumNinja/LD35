/*
    SCRIPT: saveGame(saveNum);
    
    PARAMETERS:
        saveNum - the save file to save to.
        
    RETURNS:
        boolean - whether or not the file could be saved
        
    AUTHOR: Chris Klassen
    
    DATE: June 24, 2015
    
    NOTES:
        This script saves the game to a specific file.
*/

var saveNum, fileName, file;
saveNum = argument[0];
saveName = "ld35_save_" + string(saveNum) + ".sav";

// Delete the previous file
file_delete(saveName);

// Open the file
file = file_text_open_write(saveName);

if (file == -1)
{
    // File does not exist
    return false;
}

// SAVING TO THE FILE //

// Write the save file version
file_text_write_real(file, global.SAVEFILE_VERSION);
file_text_writeln(file);

if (instance_exists(objPlayer))
{
    // Write whether or not this is a full save
    file_text_write_real(file, 1);
    file_text_writeln(file);
    
    // Write the player's room
    file_text_write_real(file, room);
    file_text_writeln(file);
    
    // Write the player's deaths
    file_text_write_real(file, global.DEATHS);
    file_text_writeln(file);
       
    // Write the player's time
    file_text_write_real(file, global.TIME);
    file_text_writeln(file);
        
    // Write the player's area
    file_text_write_real(file, global.SAVED_AREA);
    file_text_writeln(file);
}
else
{
    // Write whether or not this is a full save
    file_text_write_real(file, 0);
    file_text_writeln(file);
    
    // Write the player's room
    file_text_write_real(file, room);
    file_text_writeln(file);
    
    // Write the player's deaths
    file_text_write_real(file, 0);
    file_text_writeln(file);
    
    // Write the player's time
    file_text_write_real(file, 0);
    file_text_writeln(file);
    
    // Write the player's area
    file_text_write_real(file, -1);
    file_text_writeln(file);
}

// Write fullscreen
file_text_write_real(file, global.FULLSCREEN);
file_text_writeln(file);

// Write fullscreen
file_text_write_real(file, global.SPEEDRUN);
file_text_writeln(file);


// Close the file
file_text_close(file);

return true;
