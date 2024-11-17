disp('Choose a snack:');
disp('1. Chips');
disp('2. Candy');
disp('3. Soda');
disp('4. Water');
choice = input('Enter the number of your choice: ');
switch choice
    case 1
        disp('You chose Chips.');
    case 2
        disp('You chose Candy.');
    case 3
        disp('You chose Soda.');
    case 4
        disp('You chose Water.');
    otherwise
        disp('Invalid choice.');
end
