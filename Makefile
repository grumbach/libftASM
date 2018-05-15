# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/04 17:08:23 by agrumbac          #+#    #+#              #
#    Updated: 2018/05/15 19:57:02 by agrumbac         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

############################## BIN #############################################

NAME = libfts.a

SRC = ft_bzero.s ft_isalpha.s ft_isdigit.s ft_isascii.s ft_isprint.s \
	ft_isalnum.s ft_tolower.s ft_toupper.s ft_strcat.s ft_strlen.s ft_puts.s \
	ft_memset.s ft_memcpy.s ft_strdup.s ft_cat.s

OBJDIR = objs

OBJ = $(addprefix ${OBJDIR}/, $(SRC:.s=.o))

AS = ~/homebrew/bin/nasm

ASFLAGS = -f macho64 -g# -fsanitize=address,undefined

# LDFLAGS = -macosx_version_min 10.8 -lSystem

############################## COLORS ##########################################

BY = "\033[33;1m"
BR = "\033[31;1m"
BG = "\033[32;1m"
BB = "\033[34;1m"
BM = "\033[35;1m"
BC = "\033[36;1m"
BW = "\033[37;1m"
Y = "\033[33m"
R = "\033[31m"
G = "\033[32m"
B = "\033[34m"
M = "\033[35m"
C = "\033[36m"
WR = "\033[0m""\033[31;5m"
X = "\033[0m"
UP = "\033[A"
CUT = "\033[K"

############################## RULES ###########################################

all: ${NAME}
	@echo ${G}Success"   "[${NAME}]${X}

${NAME}: ${OBJ}
	@ar rcs ${NAME} ${OBJ}
	@echo ${B}Compiling [${NAME}]...${X}

${OBJDIR}/%.o : ./srcs/%.s
	@echo ${Y}Compiling [$@]...${X}
	@/bin/mkdir -p ${OBJDIR}
	@${AS} ${ASFLAGS} -o $@ $<
	@printf ${UP}${CUT}

############################## GENERAL #########################################

clean:
	@echo ${R}Cleaning"  "[${OBJDIR}]...${X}
	@/bin/rm -Rf ${OBJDIR}

fclean: clean
	@echo ${R}Cleaning"  "[${NAME}]...${X}
	@/bin/rm -f ${NAME}

re: fclean all

############################## DECORATION ######################################

art:
	@echo ${BB}
	@echo "                                                 _"
	@echo "                                             .--\"\" \`\"-."
	@echo "                                            / .,---.__ \\"
	@echo "    _ _ _                                   : \"\"\\,;\`/.\"/\`"
	@echo "   | (_) |                                  \`-^\\\`  __,_.'-."
	@echo "   | |_| |__                                  _}\"\"\"    \\   \`-."
	@echo "   | | | '_ \\                               .'          \`, /\""
	@echo "   | | | |_) |                             /          ,"${WR}"@"${X}${BB}"\" \\\`"
	@echo "   |_|_|_.__/                              \`\"}"${WR}"@"${X}${BB}"\"   \`       ;"
	@echo ${BG}"        _       ______   ____    ____    "${BB}"   |      ,      ;\`."
	@echo ${BG}"       / \\    .' ____ \\ |_   \\  /   _|"${BB}"      ;       ;      ; ;"
	@echo ${BG}"      / _ \\   | (___ \\_|  |   \\/   |  "${BB}"     / ,      :      ; |"
	@echo ${BG}"     / ___ \\   _.____\`.   | |\\  /| |  "${BB}"    ;  |      \`;    /  ;"
	@echo ${BG}"   _/ /   \\ \\_| \\____) | _| |_\\/_| |_"${BB}"     : "${BW}"."${BB}"J       ;,_,'    \\"
	@echo ${BG}"  |____| |____|\\______.'|_____||_____|  "${BB}" / "${BW}":"${BB}"  \\       ; "${BW}" \\   "${BB}"  ;"
	@echo "                                        ;  "${BW}";"${BB}"   }     "${BW}"_.---\\_  "${BB}" |"
	@echo "                                        | "${BW}"/   ."${BB}"'   "${BW}".' _.,_  \`-,"${BB}"!"
	@echo "                                "${BW}"_..__   "${BB}";"${BW}"/   /"${BB}"~~~,"${BW}"(_.J "${BB}":"${BW}". \`-,   \`,"
	@echo "                              "${BW}".'.--\"\"   /   /"${BB}"(,, );;   !"${BW}" \`-. \`.   :"
	@echo "                             "${BW}"; (      .'  .'"${BB}" /\`  { J  /  "${BW}"   \`-.\`,_J"
	@echo "                             "${BW}"\\ \`-._.-'  .'"${BB}"  {,___.'  /         ;"
	@echo "                              "${BW}"\`.    _.-'"${BB}";   F      ,'          ;"
	@echo "                                "${BW}"\`\"\"\"   "${BB}" |   \`.__.-\"           ;"
	@echo "                                        |                    .'"
	@echo "                                        ;      ;\"\"_          :"
	@echo "                                       .'      ; F\",        .'"
	@echo "                                       ;      ;  ; |        ;"
	@echo "                                        \\     |  | ;       .'"
	@echo "                                         }    :  :/        :"
	@echo "                                       .'     _\\ _; _,      \\"
	@echo "                                       |_.-.,\"  }  ;  :/\"\",' ;"
	@echo "                                       \`-^--^--^---^---^--^--'"
	@echo ${X}

.PHONY: all clean fclean re art