SetFactory("OpenCASCADE");

Mesh.CharacteristicLengthMax = 0.1;
Mesh.CharacteristicLengthMin = 0.1;

// Caja centrada en (0,0,0) de 2x1x1
Box(1)    = {-1., -0.5, -0.5,  2, 1, 1};

// Esfera de radio 0.25 centrada en (0,0,0)
Sphere(2) = { 0., 0.,  0.,  0.25};

BooleanDifference{ Volume{1}; Delete;}{ Volume{2}; Delete;}
