   M S B A M L   `   `   `  ����D  @ColorCode, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ColorCode	ColorCode  5   	       ColorCode.MiniWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:ColorCode     5   	     � WindowStyle$
  None=�5   	    � 
ResizeMode$ NoResize=�6    � Title$ 
MiniWindow��5	   	   
������ $	��200��5
   	   $	��200��6    � Topmost .  � AllowsTransparency .  '  !System.Windows.Shell.WindowChrome   WindowChrome 5        5   
      CaptionHeight$ 0Q�5   	      ResizeBorderThickness$ 4q�5   	   .��5      � $��0q�6   .+�5   
   �� $��3q�6   ._�5      �� $��1q�6   $��0q�6)   ���	#ff007acc J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      	   Color$	 	#ff007acc��6'   
   	Direction$	
 132Q�69      ShadowDepth$ 0Q�6I      
BlurRadius$ 8Q�6Y   ._�5      � -   5         �Name$ 
centerGrid��5      ���	#ff2d2d30 � RowDefinitions 5      �� 5      $��40 �6(   �� 5      $��* �6(   �� 5      $��* �6(   .+�5      � .+�5       �� $��0 0 5 0q�6%   $��Right=�66    �� Orientation$ 
Horizontal=�6R   $��20��6k   $	��Top=�6w   .+�5!      �� -   5        $��Minimize��5!   c      StateButtons#��[  6%   $��20��6K   $��20��6W   ���	#ff686868.��5"   "   �� $��12��6(   $��/Resource/hide.png��63   5#      �� 5$      -   5        $��CloseButton��5$   �   ���	#ff686868  CloseButton#��[ 6<   $��0q�6a   $��20��6w   $��20��6�   .��5%   "   �� -   5        $��
Close_Icon��5%   )   $��12��6;   $��/Resource/close-white.png��6F   5&      5'      5(      �� 5)      $��	ColorCode��6   $��1��60   $��Center=�6=   ���	#ff686868$��DemiBold"�6q   $	��Top=�6�   �� 5*      -   5        $��tbHex��5*   0    �� 
IsReadOnly . $��	#ff686868��6=   $��1��6N   $��Center=�6[   $��22(�6x   
����������	#ff686868$	��150��6�   $��40��6�    �� TextAlignment$ Center=�6�   �� 5+      $	��RGB��6   $��2��6*   $��Center=�67   ���	#ff686868$��DemiBold"�6k   $	��Top=�6�   �� 5,      -   5         ��Name$ tbRgb��5,      $��	#ff686868��6-   $��2��6>   $��Center=�6K   $��18(�6h   $��Center=�6v   
����������	#ff686868$	��150��6�   $��40��6�   $ Center=�6�   5-      5.      5/      52      53      