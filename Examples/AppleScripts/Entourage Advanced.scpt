FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
	Public Domain, 2004
	http://holocore.com/
	jacob@verse.org
	
	This script notifies the reciept of new messages in
	Entourage using the Growl Notification framework.
	http://growl.info/

	To be executed by a rule in Entourage (e.g. all messages as your last rule, or 'from' 'is in Address Book'). Notifications for high priority messages will be sticky, normal messages auto-dismiss after a few seconds, and low priority messages are ignored. No notifications are posted when Entourage is frontmost.
       	  l     ������  ��   	  
�� 
 i         I     ������
�� .aevtoappnull  �   � ****��  ��    Z    U  ����  =        1     ��
�� 
pisf  m    ��
�� boovfals  k   Q       O        r        l    ��  1    ��
�� 
CMgs��    o      ���� 0 themessages theMessages  m    	  Lnull     ߀�� ,Microsoft Entourage��� 7��۰     ��(   )       �(�� ���� �OPIM   alis    �   internal_data              ��0:H+   ,Microsoft Entourage                                             ,
�)"�APPLOPIM����  	                Microsoft Office X    ��      �)`     , � EN EL  _�  ]internal_data:Users:jacobjay:Applications:Productivity:Microsoft Office X:Microsoft Entourage   (  M i c r o s o f t   E n t o u r a g e    i n t e r n a l _ d a t a  OUsers/jacobjay/Applications/Productivity/Microsoft Office X/Microsoft Entourage   /    ��     ��  X   Q ��   k   #L       O   # �   !   k   ' � " "  # $ # r   ' - % & % e   ' + ' ' l  ' + (�� ( n   ' + ) * ) 1   ( *��
�� 
subj * o   ' (���� 0 themsg theMsg��   & o      ���� 0 	mysubject   $  + , + r   . 3 - . - l  . 1 /�� / n   . 1 0 1 0 1   / 1��
�� 
prty 1 o   . /���� 0 themsg theMsg��   . o      ���� 0 
mypriority   ,  2 3 2 Z   4 { 4 5 6�� 4 =  4 7 7 8 7 o   4 5���� 0 
mypriority   8 m   5 6��
�� Epty!low 5 r   : = 9 : 9 m   : ; ; ;  lowest    : o      ���� 0 
mypriority   6  < = < =  @ C > ? > o   @ A���� 0 
mypriority   ? m   A B��
�� Epty!pr2 =  @ A @ r   F I B C B m   F G D D 
 high    C o      ���� 0 
mypriority   A  E F E =  L O G H G o   L M���� 0 
mypriority   H m   M N��
�� Epty!pr4 F  I J I r   R W K L K m   R U M M 	 low    L o      ���� 0 
mypriority   J  N O N =  Z _ P Q P o   Z [���� 0 
mypriority   Q m   [ ^��
�� Epty!hgh O  R S R r   b g T U T m   b e V V  highest    U o      ���� 0 
mypriority   S  W X W =  j o Y Z Y o   j k���� 0 
mypriority   Z m   k n��
�� Epty!nrm X  [�� [ r   r w \ ] \ m   r u ^ ^  normal    ] o      ���� 0 
mypriority  ��  ��   3  _ ` _ r   | � a b a c   | � c d c l  | � e�� e n   | � f g f 1   � ���
�� 
dspn g n   | � h i h 1   } ���
�� 
sndr i o   | }���� 0 themsg theMsg��   d m   � ���
�� 
TEXT b o      ���� 0 mysender   `  j�� j Z   � � k l���� k =  � � m n m o   � ����� 0 mysender   n m   � � o o       l r   � � p q p c   � � r s r l  � � t�� t n   � � u v u m   � ���
�� 
addr v n   � � w x w 1   � ���
�� 
sndr x o   � ����� 0 themsg theMsg��   s m   � ���
�� 
TEXT q o      ���� 0 mysender  ��  ��  ��   ! m   # $    y�� y Z   �L z {���� z F   � � | } | >  � � ~  ~ o   � ����� 0 
mypriority    m   � � � � 	 low    } >  � � � � � o   � ����� 0 
mypriority   � m   � � � �  lowest    { Z   �H � ��� � � =  � � � � � o   � ����� 0 
mypriority   � m   � � � �  normal    � O   � � � � � I  � ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
titl � m   � � � �  You have new email    � �� � �
�� 
desc � l  � � ��� � b   � � � � � b   � � � � � b   � � � � � m   � � � �  From     � o   � ����� 0 mysender   � m   � � � �   about     � o   � ����� 0 	mysubject  ��   � �� ���
�� 
iapp � m   � � � �  Microsoft Entourage   ��   � m   � � � �4null     ߀�� �GrowlHelperApp.app�Ȑ 7����   � ��X   )       �(�� ���� �GRRR   alis    �  internal_data              ��0:H+   �GrowlHelperApp.app                                              ��pϨ        ����  	                	Resources     ��      �p��     � � � ��     Zinternal_data:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    i n t e r n a l _ d a t a  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  ��   � k   �H � �  � � � Z   � � ��� � � =  � � � � � o   � ����� 0 
mypriority   � m   � � � � 
 high    � r    � � � m    � �  	important    � o      ���� 0 	myurgence  ��   � r  
 � � � m  
 � �  urgent    � o      ���� 0 	myurgence   �  ��� � O  H � � � I G���� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
titl � l ' ��� � b  ' � � � b  # � � � m   � �  	You have     � o  "���� 0 	myurgence   � m  #& � �   email   ��   � �� � �
�� 
desc � l *7 ��� � b  *7 � � � b  *5 � � � b  *1 � � � m  *- � �  From     � o  -0���� 0 mysender   � m  14 � �   about     � o  56���� 0 	mysubject  ��   � �� � �
�� 
iapp � m  := � �  Microsoft Entourage    � �� ���
�� 
stck � m  @A��
�� boovtrue��   � m   ���  ��  ��  ��  �� 0 themsg theMsg  o    ���� 0 themessages theMessages��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ���� � ���
�� .aevtoappnull  �   � ****��  ��   � ���� 0 themsg theMsg � 4�� �������������������� ;�� D�� M�� V�� ^�������� o�� � ��� � ��� ��� � ��� ����� � ��� � � � � � ����
�� 
pisf
�� 
CMgs�� 0 themessages theMessages
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
subj�� 0 	mysubject  
�� 
prty�� 0 
mypriority  
�� Epty!low
�� Epty!pr2
�� Epty!pr4
�� Epty!hgh
�� Epty!nrm
�� 
sndr
�� 
dspn
�� 
TEXT�� 0 mysender  
�� 
addr
�� 
bool
�� 
titl
�� 
desc
�� 
iapp�� 
�� .notifygrnull��� ��� null�� 0 	myurgence  
�� 
stck� ��V*�,f N� *�,E�UO=�[��l kh  � ���,EE�O��,E�O��  �E�Y =��  �E�Y 1��  
a E�Y #�a   
a E�Y �a   
a E�Y hO�a ,a ,a &E` O_ a   �a ,a ,a &E` Y hUO�a 	 �a a & ��a   /a  %*a  a !a "a #_ %a $%�%a %a &a ' (UY R�a )  a *E` +Y 	a ,E` +Oa  1*a  a -_ +%a .%a "a /_ %a 0%�%a %a 1a 2ea 3 (UY h[OY��Y hascr  ��ޭ