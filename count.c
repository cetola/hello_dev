int increm(int argi) {
    return argi++;
}

int main(int argc, char *argv[]) {
    int i = 1;
    i = increm(i);
    return i;
}

