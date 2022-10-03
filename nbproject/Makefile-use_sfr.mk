#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-use_sfr.mk)" "nbproject/Makefile-local-use_sfr.mk"
include nbproject/Makefile-local-use_sfr.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=use_sfr
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HW1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HW1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=alarm_intf.c alarm_intf_p.c main.c warnfsm.c alarmfsm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/alarm_intf.o ${OBJECTDIR}/alarm_intf_p.o ${OBJECTDIR}/main.o ${OBJECTDIR}/warnfsm.o ${OBJECTDIR}/alarmfsm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/alarm_intf.o.d ${OBJECTDIR}/alarm_intf_p.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/warnfsm.o.d ${OBJECTDIR}/alarmfsm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/alarm_intf.o ${OBJECTDIR}/alarm_intf_p.o ${OBJECTDIR}/main.o ${OBJECTDIR}/warnfsm.o ${OBJECTDIR}/alarmfsm.o

# Source Files
SOURCEFILES=alarm_intf.c alarm_intf_p.c main.c warnfsm.c alarmfsm.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-use_sfr.mk ${DISTDIR}/HW1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX250F128B
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/alarm_intf.o: alarm_intf.c  .generated_files/flags/use_sfr/f458c1defb65a2f8d180f3847264d17a6a645050 .generated_files/flags/use_sfr/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm_intf.o.d 
	@${RM} ${OBJECTDIR}/alarm_intf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/alarm_intf.o.d" -o ${OBJECTDIR}/alarm_intf.o alarm_intf.c    -DXPRJ_use_sfr=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/alarm_intf_p.o: alarm_intf_p.c  .generated_files/flags/use_sfr/dc535bac21878903a6ea6efb96baf6a882000341 .generated_files/flags/use_sfr/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm_intf_p.o.d 
	@${RM} ${OBJECTDIR}/alarm_intf_p.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/alarm_intf_p.o.d" -o ${OBJECTDIR}/alarm_intf_p.o alarm_intf_p.c    -DXPRJ_use_sfr=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/use_sfr/7276c24778aa9af0da6da0a080f970c0b7ff1f9f .generated_files/flags/use_sfr/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_use_sfr=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/warnfsm.o: warnfsm.c  .generated_files/flags/use_sfr/babb68eaae2d2f3f3f2c6afffcf04f215a316681 .generated_files/flags/use_sfr/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/warnfsm.o.d 
	@${RM} ${OBJECTDIR}/warnfsm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/warnfsm.o.d" -o ${OBJECTDIR}/warnfsm.o warnfsm.c    -DXPRJ_use_sfr=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/alarmfsm.o: alarmfsm.c  .generated_files/flags/use_sfr/44d7a2ddd758407fc5f63025c113fc2a51c29313 .generated_files/flags/use_sfr/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarmfsm.o.d 
	@${RM} ${OBJECTDIR}/alarmfsm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/alarmfsm.o.d" -o ${OBJECTDIR}/alarmfsm.o alarmfsm.c    -DXPRJ_use_sfr=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/alarm_intf.o: alarm_intf.c  .generated_files/flags/use_sfr/3f90e7eb25ce39b5f2dbfba09e381b8e526f38e7 .generated_files/flags/use_sfr/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm_intf.o.d 
	@${RM} ${OBJECTDIR}/alarm_intf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/alarm_intf.o.d" -o ${OBJECTDIR}/alarm_intf.o alarm_intf.c    -DXPRJ_use_sfr=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/alarm_intf_p.o: alarm_intf_p.c  .generated_files/flags/use_sfr/9e8a82fa1e96578f603f4619bc2cd4800067f65 .generated_files/flags/use_sfr/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm_intf_p.o.d 
	@${RM} ${OBJECTDIR}/alarm_intf_p.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/alarm_intf_p.o.d" -o ${OBJECTDIR}/alarm_intf_p.o alarm_intf_p.c    -DXPRJ_use_sfr=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/use_sfr/24f78a7e28ca0bd9855151dbe4e8ee6ec5f2f8ee .generated_files/flags/use_sfr/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_use_sfr=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/warnfsm.o: warnfsm.c  .generated_files/flags/use_sfr/d4a988b8a2934d01c690dafec079c8ece14a7824 .generated_files/flags/use_sfr/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/warnfsm.o.d 
	@${RM} ${OBJECTDIR}/warnfsm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/warnfsm.o.d" -o ${OBJECTDIR}/warnfsm.o warnfsm.c    -DXPRJ_use_sfr=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/alarmfsm.o: alarmfsm.c  .generated_files/flags/use_sfr/d154788a0c474d7bc0d566853472892a564c8733 .generated_files/flags/use_sfr/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarmfsm.o.d 
	@${RM} ${OBJECTDIR}/alarmfsm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/alarmfsm.o.d" -o ${OBJECTDIR}/alarmfsm.o alarmfsm.c    -DXPRJ_use_sfr=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/HW1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HW1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_use_sfr=$(CND_CONF)    -D_SUPPRESS_PLIB_WARNING  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/HW1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HW1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_use_sfr=$(CND_CONF)    -D_SUPPRESS_PLIB_WARNING  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/HW1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
