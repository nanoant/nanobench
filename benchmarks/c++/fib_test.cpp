#define BENCHPRESS_CONFIG_MAIN
#include "benchpress/benchpress.hpp"

int fib(int n);

BENCHMARK("fib10",
          [](benchpress::context* ctx) {
            for (size_t i = 0; i < ctx->num_iterations(); ++i) {
              auto f = fib(10);
              benchpress::escape(&f);
            }
          })
