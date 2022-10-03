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
ifeq "$(wildcard nbproject/Makefile-local-use_plib.mk)" "nbproject/Makefile-local-use_plib.mk"
include nbproject/Makefile-local-use_plib.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=use_plib
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
SOURCEFILES_QUOTED_IF_SPACED=alarm_intf.c alarm_intf_p.c main.c warnfsm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/alarm_intf.o ${OBJECTDIR}/alarm_intf_p.o ${OBJECTDIR}/main.o ${OBJECTDIR}/warnfsm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/alarm_intf.o.d ${OBJECTDIR}/alarm_intf_p.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/warnfsm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/alarm_intf.o ${OBJECTDIR}/alarm_intf_p.o ${OBJECTDIR}/main.o ${OBJECTDIR}/warnfsm.o

# Source Files
SOURCEFILES=alarm_intf.c alarm_intf_p.c main.c warnfsm.c



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
	${MAKE}  -f nbproject/Makefile-use_plib.mk ${DISTDIR}/HW1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/alarm_intf.o: alarm_intf.c  .generated_files/flags/use_plib/5b6f37728498e81fc25a2841d0a96ff76ace7b78 .generated_files/flags/use_plib/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm_intf.o.d 
	@${RM} ${OBJECTDIR}/alarm_intf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DALARM_USE_PLIB -MP -MMD -MF "${OBJECTDIR}/alarm_intf.o.d" -o ${OBJECTDIR}/alarm_intf.o alarm_intf.c    -DXPRJ_use_plib=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/alarm_intf_p.o: alarm_intf_p.c  .generated_files/flags/use_plib/20458b5d342e01053191251bd20345a638c57f87 .generated_files/flags/use_plib/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm_intf_p.o.d 
	@${RM} ${OBJECTDIR}/alarm_intf_p.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DALARM_USE_PLIB -MP -MMD -MF "${OBJECTDIR}/alarm_intf_p.o.d" -o ${OBJECTDIR}/alarm_intf_p.o alarm_intf_p.c    -DXPRJ_use_plib=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/use_plib/b4b7d3e009c2ee1d187cc5ac5ed10c21c6695156 .generated_files/flags/use_plib/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DALARM_USE_PLIB -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_use_plib=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/warnfsm.o: warnfsm.c  .generated_files/flags/use_plib/25da8b096b0aa9c29f40ff7cf0738cfe5b24b187 .generated_files/flags/use_plib/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/warnfsm.o.d 
	@${RM} ${OBJECTDIR}/warnfsm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DALARM_USE_PLIB -MP -MMD -MF "${OBJECTDIR}/warnfsm.o.d" -o ${OBJECTDIR}/warnfsm.o warnfsm.c    -DXPRJ_use_plib=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/alarm_intf.o: alarm_intf.c  .generated_files/flags/use_plib/2353783b12f425aa068a58aadc3c1c25cf55e5ea .generated_files/flags/use_plib/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm_intf.o.d 
	@${RM} ${OBJECTDIR}/alarm_intf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DALARM_USE_PLIB -MP -MMD -MF "${OBJECTDIR}/alarm_intf.o.d" -o ${OBJECTDIR}/alarm_intf.o alarm_intf.c    -DXPRJ_use_plib=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/alarm_intf_p.o: alarm_intf_p.c  .generated_files/flags/use_plib/6d9355ab9a86a82e809f81abd38ed5373a75d02a .generated_files/flags/use_plib/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm_intf_p.o.d 
	@${RM} ${OBJECTDIR}/alarm_intf_p.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DALARM_USE_PLIB -MP -MMD -MF "${OBJECTDIR}/alarm_intf_p.o.d" -o ${OBJECTDIR}/alarm_intf_p.o alarm_intf_p.c    -DXPRJ_use_plib=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/use_plib/82468dd0132010cfbddd73d3f34cb856dfba7522 .generated_files/flags/use_plib/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DALARM_USE_PLIB -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_use_plib=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/warnfsm.o: warnfsm.c  .generated_files/flags/use_plib/af45062656caed5f8e875eb1d5cbe4e74bc01360 .generated_files/flags/use_plib/9143b21709c8e8205fe70af4f7eb6bd43c50da44
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/warnfsm.o.d 
	@${RM} ${OBJECTDIR}/warnfsm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DALARM_USE_PLIB -MP -MMD -MF "${OBJECTDIR}/warnfsm.o.d" -o ${OBJECTDIR}/warnfsm.o warnfsm.c    -DXPRJ_use_plib=$(CND_CONF)    $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HW1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_use_plib=$(CND_CONF)    -D_SUPPRESS_PLIB_WARNING  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/HW1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HW1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_use_plib=$(CND_CONF)    -D_SUPPRESS_PLIB_WARNING  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
