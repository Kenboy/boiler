#pragma once

#ifdef __cplusplus
extern "C" {
#endif

/**
 *
 */
struct microfiber_loop;

/**
 *
 */
struct microfiber_fiber
{

};

void
microfiber_fiber_initialize(
        struct microfiber_fiber *,
        struct microfiber_loop *,
        void (*callback)(void *)
);

void
microfiber_fiber_release(
        struct microfiber_fiber *
);

void
microfiber_fiber_sleep(
        struct microfiber_fiber *,
        uint64_t
);

void
microfiber_fiber_wakeup(
        struct microfiber_fiber *
);

void
microfiber_fiber_defer(
        struct microfiber_fiber *
);

#ifdef __cplusplus
}
#endif
