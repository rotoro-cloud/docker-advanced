#include <sys/syscall.h>
#include <unistd.h>

const char message[] =
        "\n"
        "Hi from ROTORO. We can put simple hello-world into `from scratch` image.\n"
        "\n"
        "To run complex programs, we will need additional libraries or entire operating systems.\n"
        "\n"
        "https://rotoro.cloud\n"
        "\n";

int main() {
        //write(1, message, sizeof(message) - 1);
        syscall(SYS_write, STDOUT_FILENO, message, sizeof(message) - 1);

        //_exit(0);
        //syscall(SYS_exit, 0);
        return 0;
}
