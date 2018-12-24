#pragma once

#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

struct boiler_cli_command {
    char **tokens;
};

void
boiler_cli_command_tokens(struct boiler_cli_command *);

void
boiler_cli_command_parse(struct boiler_cli_command *);

void boiler_cli_test(const char *);

#ifdef __cplusplus
}
#endif
