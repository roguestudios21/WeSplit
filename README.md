# WeSplit

**WeSplit** is a simple iOS app built using SwiftUI that helps users quickly split a restaurant bill among friends. It calculates both the **total amount** (including tip) and the **amount per person**, making group dining easier and fairer.

## Features

- Enter check amount with proper currency formatting
- Choose number of people using a picker (from 2 to 99)
- Select a tip percentage (0%, 5%, 10%, 15%, or 20%)
- Automatically calculates:
  - Total bill including tip
  - Amount per person

## Screenshots

<img width="311" alt="weSPlit" src="https://github.com/user-attachments/assets/969b7881-6589-48e1-a76d-b6f61d008c0f" />


## Technologies Used

- `SwiftUI` for building modern UIs
- `@State` for reactive UI state management
- `@FocusState` for managing keyboard focus
- `NavigationStack` and `Form` for clean layout
- `TextField`, `Picker`, and `SegmentedPickerStyle`

## How It Works

- Enter the amount of the bill.
- Use the picker to select the number of people (starts at 2).
- Choose the tip percentage from a segmented control.
- The app will:
  - Calculate the total (amount + tip)
  - Divide the total evenly across the selected number of people


