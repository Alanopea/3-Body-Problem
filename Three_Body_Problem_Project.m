% Three Body problem with ODEs
%
% Igor Redko 414992
%
% 11.01.2024
%
% Computational Techniques Laboratory Project
%
% AGH University of Science and Technology
function Three_Body_Problem_Project()
    clc; clear; close all; 
    % Initial conditions
    %Positions
    x1 = [0; 1; 0]; 
     x2 = [2; 0; 0];
      x3 = [1; 0; 1];
    %Velocities
    v1 = [0.2; 0.2; 0.2]; 
     v2 = [-0.5; 0; -0.1];
      v3 = [0; -0.3; 0];

    % Initial conditions vector
    y0 = [x1; v1; x2; v2; x3; v3];

    % Time span
    tspan = [0 30];

    % Solve ODE using ode45
    [t, result] = ode45(@equations_of_motion, tspan, y0);

    % Call the animation function
    animation(t, result);

    % Final trajectory plots
    figure;
    hold on;
    plot(result(:, 1), result(:, 2), 'r', 'LineWidth', 1);
     plot(result(:, 7), result(:, 8), 'b', 'LineWidth', 1);
      plot(result(:, 13), result(:, 14), 'g', 'LineWidth', 1);

    % Set labels and title
    xlabel('X');
     ylabel('Y');
    title('Three-Body Simulation');

    % Display initial positions
    scatter(result(1, 1), result(1, 2), 'ro', 'MarkerFaceColor', 'r');
     scatter(result(1, 7), result(1, 8), 'bo', 'MarkerFaceColor', 'b');
      scatter(result(1, 13), result(1, 14), 'go', 'MarkerFaceColor', 'g');

    % Set grid and aspect ratio
    grid on;
    axis equal;
end

