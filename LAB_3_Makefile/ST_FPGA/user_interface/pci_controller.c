#include "pci_controller.h"


void printControllerStatus() {
    int status = pciStatus();
    printf("Status: %d \n", status);
}
