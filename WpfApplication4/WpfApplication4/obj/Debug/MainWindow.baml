   M S B A M L   `   `   `  ����J  FWpfApplication4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SuperDuperPlayerSuperDuperPlayer  5          SuperDuperPlayer.Window1   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      0localclr-namespace:SuperDuperPlayer     5        � Title$  
MP3 Player��5      $	��300��6   $	��300��6%   .��5      �  � RowDefinitions 5   
   �� 5      $��40 �6   �� 5	      $��40 �6   �� 5
      $��* �6   .+�5   
   r� -   5         r�Name$ player��5      $��0��6'   $��0��61    r� LoadedBehavior$ Manual=�6<   � 5   
   $��0��6   .+�5      �� -   5         ��Name$
 Time��5   3   $
��Left=�6   $��00:00 / 00:00��6A   $��40��6V   $��Bottom=�6b   �� 5      -   5        $ Title��5   3   $
��Left=�6   $��	100,0,0,0q�6B   $��Current Song��6U   5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $��* �6#   �� 5      $��* �6#   �� 5      $��* �6#   �� 5      $��* �6#   �� 5      $��* �6#   �� 5      $��* �6#   .+�5       �� -   5         ��Name$ button_back��5       $��0��6*   .��6:   Back6@   �� 5!      -   5        $ button_stop��5!      $��1��6*   .��6:   Stop6@   �� 5"      -   5        $ button_play��5"      $��2��6*   .��6:   
Play/Pause6F   �� 5#      -   5        $ button_forward��5#      $��3��6-   .��6=   	Forward6F   �� 5$      -   5        $ 
button_add��5$      $��4��6)   .��69   
Add File6C   �� 5%      -	   5        $ button_repeat��5%      $��5��6,   .��6<   Repeat [On]6I   �� 5&      -
   5        $ button_shuffle��5&      $��6��6-   .��6=   Shuffle [Off]6L   5'      �� 5)   
   $��2��6   .��5*      �� ��6   ��  �� Path$ Songs���5,      �� 5-      .R�5.      �� ��6$   �� *Title+5/      51      52      53      54      