   M S B A M L   `   `   `  ????C  ?Practica, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:PracticaPractica  5          Practica.ClientView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:Practica     5        N? Title$  
ClientView??5	      .??5      ?  ? RowDefinitions 5   
   ?? 5      $	??10* ?6   ?? 5      $??2* ?6   .+?5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DGridSaloon??5         AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Title??6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6R   1  +System.Windows.Controls.DataGridBoundColumn   Binding 64   ?? *	FirstName+6^     5      $ 	Last Name??6%   $ * 6U    68   ?? *
LastName+6a     5      $ 
Patronymic??6%   $ * 6X    69   ?? *
Patronymic+6d     5      $ Gender??6%   $ * 6U    65   ?? *Gender.Name+6a     5      $ Phone??6%   $ * 6N    64   ?? *Phone+6Z     5      $ 	PhotoPath??6%   $ * 6V    68   ?? *	PhotoPath+6b     5      $ Birthday??6%   $ * 6T    67   ?? *
Birthday+6`     5      $ Email??6%   $ * 6N    64   ?? *Email+6Z     5      $ Registration Date??6%   $ * 6e    6@   ?? *RegistrationDate+6q   5      ?? 5   
   -   5        $??BtnBackToMain??5   J   $??
Назад??6   $??1??6!   $??right=?6.   $??
0,10,10,10q?6{   $	??130??6?   ???	#FFFF4A6D$??18(?6?   6?   ?? 5   
   -   5        $??Добавить??5      $
??Left=?6$   $??	10,10,0,0q?6?   $??1??6R   $	??Top=?6_   $	??130??6w   $??55??6?   ???	#FFFF4A6D$??18(?6?   ?? 5    
   -   5        $??Удалить??5       $
??Left=?6#   $??
309,10,0,0q?6>   $??1??6R   $	??Top=?6_   $	??130??6w   $??55??6?   ???	#FFFF4A6D$??18(?6?   ?? 5!   
   -   5        $ ??Редактировать??5!      $
??Left=?6)   $??
158,10,0,0q?6D   $??1??6X   $	??Top=?6e   $	??130??6}   $??55??6?   ???	#FFFF4A6D$??18(?6?   5"      5#      