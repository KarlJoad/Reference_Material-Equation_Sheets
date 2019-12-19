union flexType {
    int intEl;
    float floatEl;
};
union flexType el1;
float x;
// Some more code here...
el1.intEl = 27;
x = el1.floatEl; // NOT type checked, because current type of el1 cannot be determined
