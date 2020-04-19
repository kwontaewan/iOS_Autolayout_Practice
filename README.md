# iOS Autolayout Practice Example List

# 1. Calculator
## Example Class
- StackViewExampleVC.swift

## Associated Autolayout function
- StackView
- Height
- Ratio
- Align

# 2. Dynamic Font
## Example Class
- DynamicFontExampleVC.swift

## Associated Autolayout function
- Height
- Width
- Align

## View Function
- UILabel Autoshrink
  - Minimum Font Size : 화면이 줄어들때 변화할 최소 폰트사이즈 
  - Minimum Font Scale : 화면이 줄어들때 변화할 최소 Scale

# 3. Custom Keyboard
## Exmaple Class
- CustomKeyboardExampleVC.swift
- CustomKeyboard.swift
- CustomKeyboard.xib

## Associated Autolayout function
- StackView

## Layout function
- CustomLayout
- Xib

# 4. Expand TableView
## Example Class
- ExpandTableVC.swift

## Associated Autolayout function
- Align

## View Function
- TableView Cell Expand

# 5. Floating Button
## Example Class
- FloatingButtonVC.swift
- FloatingButtonListVC.swift

## Associated Autolayout function
- Align

## View Function
- Spring Animation
  - usingSpringWithDamping : 0과 1 사이의 수로 0에 가까울수록 애니메이션은 더 진동한다.
  - initialSpringVelocity :  애니메이션을 시작할 때 뷰의 상대적 속도.

# 6. Graph
## Example Class
- ChartVC.swift

## Associated Autolayout function
- Multiplier
- Autolayout Code Anchor를 이용한 Multiplier 변경

# 7. Custom Layout
## Example Class
- CustomLayoutVC.swift
- DiagonalImageView.swift

## View Function
- UIBezierPath
- CAShapeLayer
- mask
- @IBDesignable
- @IBInspectable

# 8. Custom Switch
## Example Class
- CustomSwitchVC.swift

## Associated Autolayout function
- Align

# 9. Popup
## Example Class
- PopupExampleVC.swift
- PopupVC.swift
- Popup.storyboard

## Associated Autolayout function
- Align

# 10. SignIn
## Example Class
- LoginVC.swift

## Layout Error Tracking
- 런타임시 Autolayout 에러메세지가 콘솔에 찍힐 경우 Capture UI 기능을 이용하여 명령어 **po 메모리주소** 로 어떤 뷰가 에러인지 Tracking 가능

# 11. Chat App
## Example Class
- ChattingVC.swift
- MyChattingCell.swift
- MyChattingCell.xib
- YourChattingCell.swift
- YourChattingCell.xib

## Associated Autolayout function
- Align

## View Function
- UIImageView Stretching
- Keyboard NotificationCenter
  키보드 높이에 따른 채팅 TextView 위치 변화
- Keyboard Animation SafeArea
  - 키보드 애니메이션과 동일하게 TextView 애니메이션 셋팅
  - 키보드가 올라왔을대 SafeArea bottom inset을 제거함
  - UITableView CustomCell
  - TextView Delegate



