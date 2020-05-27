##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=UOCinfectiousAgent
ConfigurationName      :=Debug
WorkspacePath          :=/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2
ProjectPath            :=/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfectiousAgent
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Joan Parellada
Date                   :=20/05/2020
CodeLitePath           :="/Users/joanparellada/Library/Application Support/CodeLite"
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -dynamiclib -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../lib/lib$(ProjectName).a
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="UOCinfectiousAgent.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)./include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/private/var/folders/5w/4h4jcrhj615bsnbcxg9zz1hr0000gn/T/AppTranslocation/723A754C-0C41-49ED-9D0E-AA456C86A81E/d/codelite.app/Contents/SharedSupport/
Objects0=$(IntermediateDirectory)/src_infection.c$(ObjectSuffix) $(IntermediateDirectory)/src_reservoir.c$(ObjectSuffix) $(IntermediateDirectory)/src_research.c$(ObjectSuffix) $(IntermediateDirectory)/src_infectiousAgent.c$(ObjectSuffix) $(IntermediateDirectory)/src_country.c$(ObjectSuffix) $(IntermediateDirectory)/src_city.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(IntermediateDirectory) $(OutputFile)

$(OutputFile): $(Objects)
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(AR) $(ArchiveOutputSwitch)$(OutputFile) $(Objects)
	@$(MakeDirCommand) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/.build-debug"
	@echo rebuilt > "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/.build-debug/UOCinfectiousAgent"

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


./Debug:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_infection.c$(ObjectSuffix): src/infection.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_infection.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_infection.c$(DependSuffix) -MM src/infection.c
	$(CC) $(SourceSwitch) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfectiousAgent/src/infection.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_infection.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_infection.c$(PreprocessSuffix): src/infection.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_infection.c$(PreprocessSuffix) src/infection.c

$(IntermediateDirectory)/src_reservoir.c$(ObjectSuffix): src/reservoir.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_reservoir.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_reservoir.c$(DependSuffix) -MM src/reservoir.c
	$(CC) $(SourceSwitch) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfectiousAgent/src/reservoir.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_reservoir.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_reservoir.c$(PreprocessSuffix): src/reservoir.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_reservoir.c$(PreprocessSuffix) src/reservoir.c

$(IntermediateDirectory)/src_research.c$(ObjectSuffix): src/research.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_research.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_research.c$(DependSuffix) -MM src/research.c
	$(CC) $(SourceSwitch) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfectiousAgent/src/research.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_research.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_research.c$(PreprocessSuffix): src/research.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_research.c$(PreprocessSuffix) src/research.c

$(IntermediateDirectory)/src_infectiousAgent.c$(ObjectSuffix): src/infectiousAgent.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_infectiousAgent.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_infectiousAgent.c$(DependSuffix) -MM src/infectiousAgent.c
	$(CC) $(SourceSwitch) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfectiousAgent/src/infectiousAgent.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_infectiousAgent.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_infectiousAgent.c$(PreprocessSuffix): src/infectiousAgent.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_infectiousAgent.c$(PreprocessSuffix) src/infectiousAgent.c

$(IntermediateDirectory)/src_country.c$(ObjectSuffix): src/country.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_country.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_country.c$(DependSuffix) -MM src/country.c
	$(CC) $(SourceSwitch) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfectiousAgent/src/country.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_country.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_country.c$(PreprocessSuffix): src/country.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_country.c$(PreprocessSuffix) src/country.c

$(IntermediateDirectory)/src_city.c$(ObjectSuffix): src/city.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_city.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_city.c$(DependSuffix) -MM src/city.c
	$(CC) $(SourceSwitch) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfectiousAgent/src/city.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_city.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_city.c$(PreprocessSuffix): src/city.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_city.c$(PreprocessSuffix) src/city.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


