$ErrorActionPreference = "Stop"

function CloneOrPullRepository([string] $name)
{
    try
    {
        $GitFolder = $(get-location).Path +"\" + $name + "\.git";
        $AllreadyCloned = Test-Path ($GitFolder);
        if($AllreadyCloned)
        {
            Write-Host "Updating" $name;
            cd $name
            $ArgumentList = 'pull';
            Start-Process git -ArgumentList $ArgumentList -Wait -NoNewWindow;
            cd..
            Write-Host "Updated" $name;
        }
        else
        {
            Write-Host "Cloning" $name;
            $ArgumentList = 'clone https://github.com/RolfVeinoeSorensen/"' + $name +'.git"';
            Start-Process git -ArgumentList $ArgumentList -Wait -NoNewWindow;
            Write-Host "Cloned git project" $name;
        }
    }
    catch
    {
        $exceptionMessage = $_.Exception.Message;
        Write-Host "Failed to download '$name': $exceptionMessage"
    }
}

function InstallNpmPackages()
{
    try
    {        
        $ArgumentList = 'install"';
        Start-Process npm -ArgumentList $ArgumentList -Wait;
        #npm install
        Write-Host "Installed NPM Packages";
    }
    catch
    {
        $exceptionMessage = $_.Exception.Message;
        Write-Host "Failed to download '$name': $exceptionMessage";
    }
}

Write-Host "Begin installing MoM for developers";
Write-Host "________________________________________"
Write-Host "Begin installing Repositories needed"
CloneOrPullRepository -name "MoM"
CloneOrPullRepository -name "MoM.Modules"
CloneOrPullRepository -name "MoM.Themes"
Write-Host "Done installing Repositories needed"
Write-Host "________________________________________"
Write-Host "Installing NPM Packages - Please be patient with this step!"
Write-Host "Scary red tekst may appear but most likely all is fine"
InstallNpmPackages;
Write-Host "________________________________________"
Write-Host "Done installing MoM for developers"