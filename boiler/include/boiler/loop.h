#pragma once

#ifdef __cplusplus
extern "C" {
#endif

struct microfiber_fiber;

struct microfiber_loop
{

};

void
microfiber_loop_initialize(
        struct microfiber_loop *
);

void
microfiber_loop_release(
        struct microfiber_loop *
);

void
microfiber_loop_run(
        struct microfiber_loop *
);

#ifdef __cplusplus
}
#endif

