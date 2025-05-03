function dydt = equations_of_motion(t, y)
   % Gravitational constant
    G = 1;

    % Masses
    m1 = 1;
     m2 = 1;
      m3 = 1;

    % Positions and velocities
    x1 = y(1:3);
     v1 = y(4:6);
      x2 = y(7:9);
      v2 = y(10:12);
     x3 = y(13:15);
    v3 = y(16:18);

    % Distances between bodies
    d12 = sqrt(sum((x2 - x1).^2));
     d13 = sqrt(sum((x3 - x1).^2));
      d23 = sqrt(sum((x3 - x2).^2));

    % Gravitational forces
    F12 = G * m1 * m2 / d12^3 * (x2 - x1);
     F13 = G * m1 * m3 / d13^3 * (x3 - x1);
      F23 = G * m2 * m3 / d23^3 * (x3 - x2);

    % Equations of motion
    dydt = [
        v1;
        F12 / m1 + F13 / m1;
        v2;
        -F12 / m2 + F23 / m2;
        v3;
        -F13 / m3 - F23 / m3;
    ];
end
