GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexp-      �      �p��<f��r�g��.�   res://Ball.tscn p      �      ��
���*!�|�Otq   res://Basic3D_CPP.gdnlib0      �       ,8���G���p����   res://Box.gdns  �      �       &M����=q�(�"�&�5   res://Box.tscn  �      �      g�A�A4�fGv+&EM]�   res://EndGameArea.gdns  p	      �       �mFnw�!�RoPq�_   res://EntityManager.gdns`
      �       ��n;�tp�����   res://Floor.tscnP      �      D��Ӳ��<S��"�0�   res://GoalPiece.tscn�      D      �@�:�*Q��P'��O   res://Main.tscn 0      �      ���7o=6�?U   res://Player.gdns    #      �       tm�4��� s)?f�#   res://Player.tscn   �#      �      ���/�X�g�P�   res://Ramp.tscn �%            ,���o��� ��?�+   res://Walls.tscn0)      �      ��1a���Ý �c�S    res://default_env.tres  �,      �       um�`�N��<*ỳ�8   res://icon.png  �=      i      ����󈘥Ey��
�   res://icon.png.import   ;      �      �����%��(#AB�   res://project.binary K      �      �pҷ�`�ZY%o!��            [gd_scene load_steps=4 format=2]

[sub_resource type="SphereMesh" id=1]

[sub_resource type="SpatialMaterial" id=2]
albedo_color = Color( 1, 0, 0.890196, 1 )

[sub_resource type="SphereShape" id=3]

[node name="Ball" type="RigidBody"]

[node name="MeshInstance" type="MeshInstance" parent="."]
mesh = SubResource( 1 )
material/0 = SubResource( 2 )

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 3 )
            [entry]

Windows.64="res://Basic3D_CPP.dll"

[dependencies]

Windows.64=[  ]

[general]

singleton=false
load_once=true
symbol_prefix="godot_"
reloadable=true
 [gd_resource type="NativeScript" load_steps=2 format=2]

[ext_resource path="res://Basic3D_CPP.gdnlib" type="GDNativeLibrary" id=1]

[resource]
resource_name = "Box"
class_name = "Box"
library = ExtResource( 1 )
            [gd_scene load_steps=4 format=2]

[sub_resource type="SpatialMaterial" id=1]
albedo_color = Color( 1, 0, 0, 1 )

[sub_resource type="CubeMesh" id=2]
material = SubResource( 1 )

[sub_resource type="BoxShape" id=3]

[node name="Box" type="Area"]

[node name="MeshInstance" type="MeshInstance" parent="."]
mesh = SubResource( 2 )
material/0 = null

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 3 )
              [gd_resource type="NativeScript" load_steps=2 format=2]

[ext_resource path="res://Basic3D_CPP.gdnlib" type="GDNativeLibrary" id=1]

[resource]
resource_name = "EndGameArea"
class_name = "EndGameArea"
library = ExtResource( 1 )
            [gd_resource type="NativeScript" load_steps=2 format=2]

[ext_resource path="res://Basic3D_CPP.gdnlib" type="GDNativeLibrary" id=1]

[resource]
resource_name = "EntityManager"
class_name = "EntityManager"
library = ExtResource( 1 )
        [gd_scene load_steps=4 format=2]

[sub_resource type="SpatialMaterial" id=1]
albedo_color = Color( 0.0784314, 0.917647, 0.00784314, 1 )

[sub_resource type="CubeMesh" id=2]
material = SubResource( 1 )

[sub_resource type="ConvexPolygonShape" id=3]
points = PoolVector3Array( -1, 1, 1, 1, 1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, 1, -1, -1, 1, -1, 1, -1, -1, -1, 1, 1, 1, -1, 1, -1, 1, 1, -1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, -1, -1, -1, -1, 1, -1, 1, -1, -1 )

[node name="Floor" type="Spatial"]

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 10, 0, 0, 0, 0.5, 0, 0, 0, 10, 0, 0, 0 )
mesh = SubResource( 2 )
material/0 = null

[node name="StaticBody" type="StaticBody" parent="MeshInstance"]

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance/StaticBody"]
shape = SubResource( 3 )
       [gd_scene load_steps=4 format=2]

[sub_resource type="CubeMesh" id=1]

[sub_resource type="SpatialMaterial" id=2]
albedo_color = Color( 0.521569, 0, 1, 1 )

[sub_resource type="ConvexPolygonShape" id=3]
points = PoolVector3Array( -1, 1, 1, 1, 1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, 1, -1, -1, 1, -1, 1, -1, -1, -1, 1, 1, 1, -1, 1, -1, 1, 1, -1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, -1, -1, -1, -1, 1, -1, 1, -1, -1 )

[node name="GoalPiece" type="Spatial"]

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, 6, 0, 0, 0, 1, 0, 0, 0 )
mesh = SubResource( 1 )
material/0 = SubResource( 2 )

[node name="StaticBody" type="StaticBody" parent="MeshInstance"]

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance/StaticBody"]
shape = SubResource( 3 )

[node name="MeshInstance2" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, 6, 0, 0, 0, 1, 0, 0, -10 )
mesh = SubResource( 1 )
material/0 = SubResource( 2 )

[node name="StaticBody" type="StaticBody" parent="MeshInstance2"]

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance2/StaticBody"]
shape = SubResource( 3 )

[node name="MeshInstance3" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, -2.62268e-007, -1, 0, 6, -4.37114e-008, 0, 7, -5 )
mesh = SubResource( 1 )
material/0 = SubResource( 2 )

[node name="StaticBody" type="StaticBody" parent="MeshInstance3"]

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance3/StaticBody"]
shape = SubResource( 3 )
            [gd_scene load_steps=13 format=2]

[ext_resource path="res://EntityManager.gdns" type="Script" id=1]
[ext_resource path="res://Box.tscn" type="PackedScene" id=2]
[ext_resource path="res://Box.gdns" type="Script" id=3]
[ext_resource path="res://Floor.tscn" type="PackedScene" id=4]
[ext_resource path="res://Walls.tscn" type="PackedScene" id=5]
[ext_resource path="res://GoalPiece.tscn" type="PackedScene" id=6]
[ext_resource path="res://EndGameArea.gdns" type="Script" id=7]
[ext_resource path="res://Ball.tscn" type="PackedScene" id=8]
[ext_resource path="res://Ramp.tscn" type="PackedScene" id=9]
[ext_resource path="res://Player.tscn" type="PackedScene" id=10]
[ext_resource path="res://Player.gdns" type="Script" id=11]

[sub_resource type="BoxShape" id=1]

[node name="Main" type="Node"]
script = ExtResource( 1 )

[node name="Box" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 6.5, 2.5, -6.5 )
script = ExtResource( 3 )

[node name="Floor" parent="." instance=ExtResource( 4 )]

[node name="Walls" parent="." instance=ExtResource( 5 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -9.5, 1.5, 0 )

[node name="Walls2" parent="." instance=ExtResource( 5 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 9.5, 1.5, 0 )

[node name="Walls3" parent="." instance=ExtResource( 5 )]
transform = Transform( -4.37114e-008, 0, 1, 0, 1, 0, -1, 0, -4.37114e-008, 0, 1.5, 9.5 )

[node name="Walls4" parent="." instance=ExtResource( 5 )]
transform = Transform( -4.37114e-008, 0, 1, 0, 1, 0, -1, 0, -4.37114e-008, 0, 1.5, -9.5 )

[node name="GoalPiece" parent="." instance=ExtResource( 6 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 9.02493, 12.7495, -21.8541 )

[node name="EndPlatform" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 6.5, -27 )

[node name="Area" type="Area" parent="EndPlatform"]
script = ExtResource( 7 )

[node name="CollisionShape" type="CollisionShape" parent="EndPlatform/Area"]
transform = Transform( 1, 0, 0, 0, 6.9, 0, 0, 0, 5.8, 10.5, 5.5, 0 )
shape = SubResource( 1 )

[node name="Ball" parent="." instance=ExtResource( 8 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 8, -27 )
mass = 30.0
linear_damp = 0.8
angular_damp = 0.8

[node name="Ramp" parent="." instance=ExtResource( 9 )]
transform = Transform( 1, 0, 0, 0, 0.889144, -0.457628, 0, 0.457628, 0.889144, 0, 4.85371, -10.1218 )

[node name="Player" parent="." instance=ExtResource( 10 )]
editor/display_folded = true
transform = Transform( 1, 0, 0, 0, -4.37114e-008, -1, 0, 1, -4.37114e-008, 0, 2.5, 0 )
script = ExtResource( 11 )

[node name="Camera" type="Camera" parent="Player"]
transform = Transform( 1, 0, 0, 0, -0.5, 0.866025, 0, -0.866025, -0.5, 0, 14, -11 )
current = true

[node name="Panel" type="Panel" parent="."]
editor/display_folded = true
margin_left = 354.059
margin_top = 204.323
margin_right = 610.059
margin_bottom = 309.323

[node name="Label" type="Label" parent="Panel"]
margin_left = 85.5232
margin_top = 37.4673
margin_right = 141.523
margin_bottom = 51.4673
text = "You Win!"

[node name="DirectionalLight" type="DirectionalLight" parent="."]
transform = Transform( 0.951032, 0.184711, -0.247832, 0.0254146, 0.752359, 0.658263, 0.308047, -0.632327, 0.710823, 0, 18.5, 0 )
light_energy = 0.5
shadow_enabled = true
[connection signal="body_entered" from="Box" to="Box" method="_on_Box_body_entered"]
[connection signal="body_entered" from="EndPlatform/Area" to="EndPlatform/Area" method="_on_Area_body_entered"]
           [gd_resource type="NativeScript" load_steps=2 format=2]

[ext_resource path="res://Basic3D_CPP.gdnlib" type="GDNativeLibrary" id=1]

[resource]
resource_name = "Player"
class_name = "Player"
library = ExtResource( 1 )
      [gd_scene load_steps=4 format=2]

[sub_resource type="SpatialMaterial" id=1]
albedo_color = Color( 0.992157, 1, 0, 1 )

[sub_resource type="CapsuleMesh" id=2]
material = SubResource( 1 )

[sub_resource type="CapsuleShape" id=3]

[node name="Player" type="KinematicBody"]

[node name="MeshInstance" type="MeshInstance" parent="."]
mesh = SubResource( 2 )
material/0 = null

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 3 )
    [gd_scene load_steps=4 format=2]

[sub_resource type="SpatialMaterial" id=1]
albedo_color = Color( 0.0313726, 1, 0, 1 )

[sub_resource type="CubeMesh" id=2]
material = SubResource( 1 )

[sub_resource type="ConvexPolygonShape" id=3]
points = PoolVector3Array( -1, 1, 1, 1, 1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, 1, -1, -1, 1, -1, 1, -1, -1, -1, 1, 1, 1, -1, 1, -1, 1, 1, -1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, -1, -1, -1, -1, 1, -1, 1, -1, -1 )

[node name="Ramp" type="Spatial"]

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 1.85, 0, 0, 0, 0.15, 0, 0, 0, 10.291, 0, 0, 0 )
mesh = SubResource( 2 )
material/0 = null

[node name="StaticBody" type="StaticBody" parent="MeshInstance"]

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance/StaticBody"]
shape = SubResource( 3 )
 [gd_scene load_steps=4 format=2]

[sub_resource type="SpatialMaterial" id=1]
albedo_color = Color( 0.0235294, 0.952941, 0.886275, 1 )

[sub_resource type="CubeMesh" id=2]
material = SubResource( 1 )

[sub_resource type="ConvexPolygonShape" id=3]
points = PoolVector3Array( -1, 1, 1, 1, 1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, 1, -1, -1, 1, -1, 1, -1, -1, -1, 1, 1, 1, -1, 1, -1, 1, 1, -1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, -1, -1, -1, -1, 1, -1, 1, -1, -1 )

[node name="Walls" type="Spatial"]

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 0.5, 0, 0, 0, 1, 0, 0, 0, 10, 0, 0, 0 )
mesh = SubResource( 2 )
material/0 = null

[node name="StaticBody" type="StaticBody" parent="MeshInstance"]

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance/StaticBody"]
shape = SubResource( 3 )
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
�PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Basic3D    application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     input/ui_accept\              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index          pressure          pressed           script         )   rendering/environment/default_environment          res://default_env.tres      GDPC