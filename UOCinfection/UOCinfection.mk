##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=UOCinfection
ConfigurationName      :=Debug
WorkspacePath          :=/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2
ProjectPath            :=/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfection
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
OutputFile             :=../bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="UOCinfection.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)./test/include $(IncludeSwitch)../UOCinfectiousAgent/include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)UOCinfectiousAgent 
ArLibs                 :=  "UOCinfectiousAgent" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)../lib 

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
Objects0=$(IntermediateDirectory)/test_src_test_suit.c$(ObjectSuffix) $(IntermediateDirectory)/test_src_test_pr2.c$(ObjectSuffix) $(IntermediateDirectory)/test_src_utils.c$(ObjectSuffix) $(IntermediateDirectory)/test_src_test_pr3.c$(ObjectSuffix) $(IntermediateDirectory)/test_src_test_pr1.c$(ObjectSuffix) $(IntermediateDirectory)/src_main.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d "../.build-debug/UOCinfectiousAgent" $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) $(Objects) $(LibPath) $(Libs) $(LinkOptions)

"../.build-debug/UOCinfectiousAgent":
	@$(MakeDirCommand) "../.build-debug"
	@echo stam > "../.build-debug/UOCinfectiousAgent"




MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/test_src_test_suit.c$(ObjectSuffix): test/src/test_suit.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/test_src_test_suit.c$(ObjectSuffix) -MF$(IntermediateDirectory)/test_src_test_suit.c$(DependSuffix) -MM test/src/test_suit.c
	$(CC) $(SourceSwitch) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfection/test/src/test_suit.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/test_src_test_suit.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/test_src_test_suit.c$(PreprocessSuffix): test/src/test_suit.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/test_src_test_suit.c$(PreprocessSuffix) test/src/test_suit.c

$(IntermediateDirectory)/test_src_test_pr2.c$(ObjectSuffix): test/src/test_pr2.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/test_src_test_pr2.c$(ObjectSuffix) -MF$(IntermediateDirectory)/test_src_test_pr2.c$(DependSuffix) -MM test/src/test_pr2.c
	$(CC) $(SourceSwitch) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfection/test/src/test_pr2.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/test_src_test_pr2.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/test_src_test_pr2.c$(PreprocessSuffix): test/src/test_pr2.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/test_src_test_pr2.c$(PreprocessSuffix) test/src/test_pr2.c

$(IntermediateDirectory)/test_src_utils.c$(ObjectSuffix): test/src/utils.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/test_src_utils.c$(ObjectSuffix) -MF$(IntermediateDirectory)/test_src_utils.c$(DependSuffix) -MM test/src/utils.c
	$(CC) $(SourceSwitch) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfection/test/src/utils.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/test_src_utils.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/test_src_utils.c$(PreprocessSuffix): test/src/utils.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/test_src_utils.c$(PreprocessSuffix) test/src/utils.c

$(IntermediateDirectory)/test_src_test_pr3.c$(ObjectSuffix): test/src/test_pr3.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/test_src_test_pr3.c$(ObjectSuffix) -MF$(IntermediateDirectory)/test_src_test_pr3.c$(DependSuffix) -MM test/src/test_pr3.c
	$(CC) $(SourceSwitch) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfection/test/src/test_pr3.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/test_src_test_pr3.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/test_src_test_pr3.c$(PreprocessSuffix): test/src/test_pr3.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/test_src_test_pr3.c$(PreprocessSuffix) test/src/test_pr3.c

$(IntermediateDirectory)/test_src_test_pr1.c$(ObjectSuffix): test/src/test_pr1.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/test_src_test_pr1.c$(ObjectSuffix) -MF$(IntermediateDirectory)/test_src_test_pr1.c$(DependSuffix) -MM test/src/test_pr1.c
	$(CC) $(SourceSwitch) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfection/test/src/test_pr1.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/test_src_test_pr1.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/test_src_test_pr1.c$(PreprocessSuffix): test/src/test_pr1.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/test_src_test_pr1.c$(PreprocessSuffix) test/src/test_pr1.c

$(IntermediateDirectory)/src_main.c$(ObjectSuffix): src/main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main.c$(DependSuffix) -MM src/main.c
	$(CC) $(SourceSwitch) "/Users/joanparellada/Documents/UOC/PP2020/UOC2019infection_v2/UOCinfection/src/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main.c$(PreprocessSuffix): src/main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main.c$(PreprocessSuffix) src/main.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


