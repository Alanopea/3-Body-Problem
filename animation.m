function animation(t, result)
    %Animatiopn    
    figure;

    for i = 1:length(t)
        x1 = result(:, 1:3);
        x2 = result(:, 7:9);
        x3 = result(:, 13:15);

        % Scatter plots for each body
        scatter3(x1(i, 1), x1(i, 2), x1(i, 3), 50, 'ro', 'MarkerFaceColor', 'r');
        hold on;
        scatter3(x2(i, 1), x2(i, 2), x2(i, 3), 50, 'bo', 'MarkerFaceColor', 'b');
        scatter3(x3(i, 1), x3(i, 2), x3(i, 3), 50, 'go', 'MarkerFaceColor', 'g');

        % Line plots for trajectories
        plot3(x1(1:i, 1), x1(1:i, 2), x1(1:i, 3), 'r-', 'LineWidth', 1);
        plot3(x2(1:i, 1), x2(1:i, 2), x2(1:i, 3), 'b-', 'LineWidth', 1);
        plot3(x3(1:i, 1), x3(1:i, 2), x3(1:i, 3), 'g-', 'LineWidth', 1);
        % Set labels and title
        xlabel('X');
        ylabel('Y');
        zlabel('Z');
        title(['Three-Body Simulation - Time: ', num2str(t(i))]);
        grid on;
        axis equal;

        % Pause to control the speed of the animation
        pause(0.001);

        % Clear the plot for the next iteration
        clf;
    end
end