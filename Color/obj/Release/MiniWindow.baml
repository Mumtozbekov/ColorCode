   M S B A M L   `   `   `  ���� D  @ColorCode, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ColorCode	ColorCode      ColorCode.MiniWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:ColorCode       � WindowStyle$
  None=� � 
ResizeMode$ NoResize=� � Title$ 
MiniWindow��
������ $	��200��$	��200�� � Topmost .  � AllowsTransparency .  '  !System.Windows.Shell.WindowChrome   WindowChrome      CaptionHeight$ 0Q�   ResizeBorderThickness$ 4q�.��� $��0q�.+��� $��3q�._��� $��1q�$��0q����	#ff007acc J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect  	   Color$	 	#ff007acc��
   	Direction$	
 132Q�   ShadowDepth$ 0Q�   
BlurRadius$ 8Q�._�� -    �Name$ 
centerGrid�����	#ff2d2d30 � RowDefinitions �� $��40 ��� $��* ��� $��* �.+�� .+��� $��0 0 5 0q�$��Right=� �� Orientation$ 
Horizontal=�$��20��$	��Top=�.+��� -   $��Minimize��   StateButtons#��[  $��20��$��20�����	#ff686868.���� $��12��$��/Resource/hide.png���� -   $��CloseButton�����	#ff686868  CloseButton#��[ $��0q�$��20��$��20��.���� -   $��
Close_Icon��$��12��$��/Resource/close-white.png���� $��	ColorCode��$��1��$��Center=����	#ff686868$��DemiBold"�$	��Top=��� -   $��tbHex�� �� 
IsReadOnly . $��	#ff686868��$��1��$��Center=�$��22(�
����������	#ff686868$	��150��$��40�� �� TextAlignment$ Center=��� $	��RGB��$��2��$��Center=����	#ff686868$��DemiBold"�$	��Top=��� -    ��Name$ tbRgb��$��	#ff686868��$��2��$��Center=�$��18(�$��Center=�
����������	#ff686868$	��150��$��40��$ Center=�